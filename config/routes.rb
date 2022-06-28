Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/show/:id", controller: "contacts", action: "show"
  # Defines the root path route ("/")
  # root "articles#index"
  get "/index", controller: "contacts", action: "index"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/contacts" => "contacts#create"

  patch "/contacts/:id" => "contacts#update"

  delete "/contacts/:id" => "contacts#destroy"

end
