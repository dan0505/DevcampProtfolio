Rails.application.routes.draw do
  resources :protfolios, except: [:show]
  get "protfolio/:id", to: "protfolios#show", as: "portfolio_show"

  get "about-me", to: "pages#about"
  get "contact", to: "pages#contact"

  resources :blogs
  root to: "protfolios#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
