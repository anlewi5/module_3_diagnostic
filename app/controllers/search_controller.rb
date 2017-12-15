class SearchController < ApplicationController
  def index
    location = params[:location]

    @conn = Faraday.new(url: "https://api.data.gov") do |faraday|
      faraday.headers["X-Api-Key"] = ENV["nrel_key"]
      faraday.adapter Faraday.default_adapter
    end

    response = @conn.get("/nrel/alt-fuel-stations/v1/nearest.json?location=#{location}")

    results = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]

    @stations  = results.map do |result|
      Station.new(result)
    end
  end
end