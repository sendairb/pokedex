Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :regional_pokedexes, param: :name do
    resources :pokemons do
      collection do
        get 'search'
      end
    end
  end
end
