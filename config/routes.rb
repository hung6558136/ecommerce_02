Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  get "/pages/:page", to: "pages#show"
end
