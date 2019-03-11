Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'root#index'
  # get "/hello", to: proc { |env| [200, {}, ["Hello world"]] }
  # mount HelloApp, at: '/hello'
  # mount HelloApp => '/hello'
  get "/help" => 'help#index', as: 'help'
  # get "/item/:id" => "items#show", as: "item"
  get "/auction/:auction_id/item/:id" => "items#show", as: "item"
  # scope controller: :help do
  #   get 'help/index' => :index
  # end
  # scope :auctions, :archived do
  #   get ':id' => "items#show"
  # end
  # scope :auctions, controller: :auctions, as: 'admin' do
  #   get 'new' => :new, as: 'new_auction'
  # end
  # scope controller: :auctions, constraints: {:id => /\d+/} do
  #   get 'edit/:id' => :edit
  #   post 'pause/:id' => :pause
  # end
  # scope path: '/auctions', controller: :auctions do
  #   get '/' => :index
  #   get 'index' => :index
  #   get 'new' => :new
  #   get ':id' => "auctions#show", as: 'auction'
  #   constraints id: /\d+/ do
  #     get 'edit/:id' => :edit
  #     post 'pause/:id' => :pause
  #   end
  #   constraints(DateFormatConstraint) do
  #     get 'since/:date' => :since
  #   end
  # end
  resources :auctions
  direct(:apple) { "http://www.apple.com" }
  resource :profile
end
