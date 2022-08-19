Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"
  get ".me", to: "user#show"
  
end
