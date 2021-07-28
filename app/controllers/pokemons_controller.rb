class PokemonsController < ApplicationController
  def index
    @pokemon_name = ''
    @pokemon_types = []
    @pokemon_titles = []
    @pokemon_type_masters = [
      { :key => "normal", :name => "ノーマル"}, { :key => "fire", :name => "ほのお"},
      { :key => "water", :name => "みず"}, { :key => "electric", :name => "でんき"},
      { :key => "grass", :name => "くさ"}, { :key => "ice", :name => "こおり"},
      { :key => "fighting", :name => "かくとう"}, { :key => "poison", :name => "どく"},
      { :key => "ground", :name => "じめん"}, { :key => "flying", :name => "ひこう"},
      { :key => "psychic", :name => "エスパー"}, { :key => "bug", :name => "むし"},
      { :key => "rock", :name => "いわ"}, { :key => "ghost", :name => "ゴースト"},
      { :key => "dragon", :name => "ドラゴン"}, { :key => "dark", :name => "あく"},
      { :key => "steel", :name => "はがね"}, { :key => "fairy", :name => "フェアリー"},
    ]
    @pokemon_title_masters = [
      { :key => "sword", :name => "ソード" }, { :key => "shield", :name => "シールド" },
    ]

    @regional_pokedex = RegionalPokedex.find_by!(name: params[:regional_pokedex_name])
    @pokemons = Pokemon.where("regional_pokedex_id" => @regional_pokedex.id)
  end

  def search
    @pokemon_name = params[:pokemon_name]
    @pokemon_types = params[:pokemon_types]
    @pokemon_titles = params[:pokemon_titles]

    @pokemon_type_masters = [
      { :key => "normal", :name => "ノーマル"}, { :key => "fire", :name => "ほのお"},
      { :key => "water", :name => "みず"}, { :key => "electric", :name => "でんき"},
      { :key => "grass", :name => "くさ"}, { :key => "ice", :name => "こおり"},
      { :key => "fighting", :name => "かくとう"}, { :key => "poison", :name => "どく"},
      { :key => "ground", :name => "じめん"}, { :key => "flying", :name => "ひこう"},
      { :key => "psychic", :name => "エスパー"}, { :key => "bug", :name => "むし"},
      { :key => "rock", :name => "いわ"}, { :key => "ghost", :name => "ゴースト"},
      { :key => "dragon", :name => "ドラゴン"}, { :key => "dark", :name => "あく"},
      { :key => "steel", :name => "はがね"}, { :key => "fairy", :name => "フェアリー"},
    ]
    @pokemon_title_masters = [
      { :key => "sword", :name => "ソード" }, { :key => "shield", :name => "シールド" },
    ]
    @regional_pokedex = RegionalPokedex.find_by!(name: params[:regional_pokedex_name])

    @pokemons = Pokemon.where("regional_pokedex_id" => @regional_pokedex.id)
    @pokemons = @pokemons.where("name like ?", "%#{@pokemon_name}%") if @pokemon_name&.present?
    @pokemons = @pokemons.where("type1" => @pokemon_types).or(Pokemon.where("type2" => @pokemon_types)) if @pokemon_types.&present?
    @pokemons = @pokemons.where("appear_on_sword" => true) if @pokemon_titles&.include?("sword")
    @pokemons = @pokemons.where("appear_on_shield" => true) if @pokemon_titles&.include?("shield")
  end
end
