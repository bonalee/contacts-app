Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/contacts" => "contacts#contact_index"
  get "/contacts/new" => "contacts#new_contact"
  post "/contacts" => "contacts#create_contact"
  get "/contacts/:id" => "contacts#show_contact"
  get "/contacts/:id/edit" => "contacts#edit_contact"
  patch "/contacts/:id" => "contacts#update_contact"
  delete "/contacts/:id" => "contacts#delete_contact"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
