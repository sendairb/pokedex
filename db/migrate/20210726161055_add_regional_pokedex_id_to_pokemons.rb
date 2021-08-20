class AddRegionalPokedexIdToPokemons < ActiveRecord::Migration[6.1]
  def change
    add_reference :pokemons, :regional_pokedex, foreign_key: true
  end
end
