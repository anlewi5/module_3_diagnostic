class SearchController < ApplicationController
  def index
    if params[:zip_code]
      render text: 'hello'
    end
  end
end