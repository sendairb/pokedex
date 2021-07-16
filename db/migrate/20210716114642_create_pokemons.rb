class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name, null: false
      t.string :type1, null: false
      t.string :type2, null: true
      t.integer :national_pokedex_no, null: false
      t.integer :regional_pokedex_no, null: false
      t.boolean :appear_on_sword, null: false
      t.boolean :appear_on_shield, null: false

      t.timestamps
    end
  end
end
