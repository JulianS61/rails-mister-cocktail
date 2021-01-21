Rails.application.routes.draw do
  root to: 'cocktails#home'

  resources :cocktails, only: %i[index show create destroy] do
    resources :doses, only: [:create]
    resources :posts, only: [:create]
  end

  resources :doses, only: [] do
    patch 'ingredient/:id/uplike', to: 'ingredients#uplike', as: :uplike_ingredient
  end
  resources :ingredients, only: [:update]

  resources :doses, only: [:destroy]
end
