Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'root#index'
  get "/help" => 'help#index', as: 'help'

  resources :projects, path_names: { new: 'nuevo', edit: 'cambiar' }
  resources :photos, controller: :images

  resources :reports do
    new do
      post :preview
    end
  end

  resources :bids do
    resources :retraction
  end
end
