class CreateRegionalPokedexes < ActiveRecord::Migration[6.1]
  def change
    create_table :regional_pokedexes do |t|
      t.string :name, null: false
      t.string :display_name, null: false

      t.timestamps
    end
  end
end
