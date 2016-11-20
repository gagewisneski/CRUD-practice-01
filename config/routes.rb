Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "stuffs#index"
  get "/stuffs", to: "stuffs#index"

  get "/stuffs/new", to: "stuffs#new"
  post "/stuffs", to: "stuffs#create"

  get "/stuffs/:id", to: "stuffs#show"

  get "/stuffs/:id/edit", to: "stuffs#edit"
  patch "/stuffs/:id", to: "stuffs#update"

  delete "/stuffs/:id", to: "stuffs#destroy"

end
