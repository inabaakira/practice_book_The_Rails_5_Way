Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'root#index'
  get "/help" => 'help#index', as: 'help'

  resources :auctions do
    match :terminate, via: [:get, :post], on: :collection
  end
end
