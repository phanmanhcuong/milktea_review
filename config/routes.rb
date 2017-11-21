Rails.application.routes.draw do

  devise_for :users
  resources :users
  root "static_pages#show", page: "home"
  get "/pages/:page" => "static_pages#show"
end
