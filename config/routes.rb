Rails.application.routes.draw do
  root to: 'cocktails#home'

  resources :cocktails, only: %i[index show new create destroy] do
    resources :doses, only: [:create]
  end

  resources :doses, only: [:destroy]
end
