Rails.application.routes.draw do
  root "pages#home"
  get "/pages/:page", to: "pages#show"
end
