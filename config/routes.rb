Rails.application.routes.draw do
  resources :apps

  post '/update_app/:id', to: "apps#update_app", as: "update_app"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
