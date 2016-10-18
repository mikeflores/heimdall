Rails.application.routes.draw do
  root to: "projects#index"
  resources :workers
  resources :projects
end