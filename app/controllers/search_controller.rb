class SearchController < ApplicationController
  def index
    zip = params[:zip]

    @conn = Faraday.new(url: "https://api.data.gov") do |faraday|
      faraday.headers["X-Api-Key"] = "ENV[nrel_key]"
      faraday.adapter Faraday.default_adapter
    end

    response = @conn.get("/nrel/alt-fuel-stations/v1.json?zip=#{zip}")
    binding.pry
    @stations = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
    binding.pry
    end
end