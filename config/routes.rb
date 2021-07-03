Rails.application.routes.draw do
  namespace :api, format: :json  do
    resources :movies
  end
  get "api/director", to:"api/movies#director"
end
