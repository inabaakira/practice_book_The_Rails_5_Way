Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/hello", to: proc { |env| [200, {}, ["Hello world"]] }
  # mount HelloApp, at: '/hello'
  mount HelloApp => '/hello'
end
