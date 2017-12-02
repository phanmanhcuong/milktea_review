Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks",
    :registrations => "registrations/registrations"}
  resources :users
  root "static_pages#show"
  get "/pages/:page" => "static_pages#show"
  resources :reviews
  resources :comments
  resources :likes
  resources :admins
  resources :reports, only: :create
  resources :notis

  scope "(:locale)", locale: /en|jp|vn/ do
    root to: "static_pages#show"
  end
end
