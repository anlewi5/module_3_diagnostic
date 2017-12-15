Rails.application.routes.draw do
  root 'welcome#index'
  get '/search', to: "search#index"

  get '/api/alt-fuel-stations/v1.json?zip'
end
