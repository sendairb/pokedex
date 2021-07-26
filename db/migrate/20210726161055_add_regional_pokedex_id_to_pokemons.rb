class AddRegionalPokedexIdToPokemons < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :regional_pokedex_id, :integer, null: false
  end
end
