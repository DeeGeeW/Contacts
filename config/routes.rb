Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/one_contact", controller: "contacts", action: "get_one_contact"
  # Defines the root path route ("/")
  # root "articles#index"
  get "/all_contacts", controller: "contacts", action: "get_all_contacts"
end
