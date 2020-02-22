Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'find/', to: 'pages#recipes', as: :find
  get 'recipes/', to: 'pages#show_recipes', as: :show_recipes
end
