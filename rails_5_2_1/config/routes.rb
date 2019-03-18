Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'root#index'
  get "/help" => 'help#index', as: 'help'

  # resources :auctions do
  #   resources :bids
  #   resources :comments
  #   resources :image_attachments, only: :index
  # end

  # resources :bids do
  #   resources :comments
  # end

  concern :commentable do
    resources :comments
  end

  concern :image_attachable do
    resources :image_attachments, only: :index
  end

  resources :auctions, concerns: [:commentable, :image_attachable] do
    resources :bids
  end

  resources :bids, concerns: :commentable
end
