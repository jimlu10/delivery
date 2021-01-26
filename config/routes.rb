Rails.application.routes.draw do
  resources :couriers, only: :index
end
