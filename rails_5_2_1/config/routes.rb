Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/hello", to: proc { |env| [200, {}, ["Hello world"]] }
  # mount HelloApp, at: '/hello'
  # mount HelloApp => '/hello'
  get "/help" => 'help#index', as: 'help'
  # get "/item/:id" => "items#show", as: "item"
  get "/auction/:auction_id/item/:id" => "items#show", as: "item"
end
