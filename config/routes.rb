Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :users
  root "static_pages#show", page: "home"
  get "/pages/:page" => "static_pages#show"
  resources :reviews
end
