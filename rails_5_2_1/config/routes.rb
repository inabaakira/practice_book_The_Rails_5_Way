Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'root#index'
  get "/help" => 'help#index', as: 'help'

  resources :auctions do
    resources :bids do
      match :retract, via: [:get, :post], on: :member
    end
  end
end
