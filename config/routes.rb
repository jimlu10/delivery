Rails.application.routes.draw do
  resources :couriers, only: :index
  resources :guides, only: [] do
    post :track, on: :collection
  end
end
