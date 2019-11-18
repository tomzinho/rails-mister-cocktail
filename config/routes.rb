# config/routes.rb
Rails.application.routes.draw do
  root to: "cocktails#index"
  resources :cocktails do
    resources :doses, only: [ :new, :create, :index ]
  end
end
