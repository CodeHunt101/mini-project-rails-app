Rails.application.routes.draw do
  resources :pokemon_types
  resources :pokemons
  resources :types
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
