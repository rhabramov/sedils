Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Set the root page
  root "home#index"

  # Set the GET signup page
  get "/signup", to: "signup#index"

  # Set the POST signup action
  post "/signup", to: "signup#create_signup"
end
