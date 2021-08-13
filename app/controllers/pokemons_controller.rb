class PokemonsController < ApplicationController
  before_action :set_masters

  def set_masters
    @pokemon_type_masters = [
      { key: "normal", name: "ノーマル"}, { key: "fire", name: "ほのお"},
      { key: "water", name: "みず"}, { key: "electric", name: "でんき"},
      { key: "grass", name: "くさ"}, { key: "ice", name: "こおり"},
      { key: "fighting", name: "かくとう"}, { key: "poison", name: "どく"},
      { key: "ground", name: "じめん"}, { key: "flying", name: "ひこう"},
      { key: "psychic", name: "エスパー"}, { key: "bug", name: "むし"},
      { key: "rock", name: "いわ"}, { key: "ghost", name: "ゴースト"},
      { key: "dragon", name: "ドラゴン"}, { key: "dark", name: "あく"},
      { key: "steel", name: "はがね"}, { key: "fairy", name: "フェアリー"},
    ]
    @pokemon_title_masters = [
      { key: "sword", name: "ソード" }, { key: "shield", name: "シールド" },
    ]
  end

  def index
    @pokemon_name = ''
    @pokemon_types = []
    @pokemon_titles = {}

    @regional_pokedex = RegionalPokedex.find_by!(name: params[:regional_pokedex_name])
    @pokemons = @regional_pokedex.pokemons
  end

  def search
    @pokemon_name = params[:pokemon_name]
    @pokemon_types = params[:pokemon_types]
    @pokemon_titles = params[:pokemon_titles]

    @regional_pokedex = RegionalPokedex.find_by!(name: params[:regional_pokedex_name])

    @pokemons = @regional_pokedex.pokemons
    @pokemons = @pokemons.where("name like ?", "%#{@pokemon_name}%") if @pokemon_name&.present?
    @pokemons = @pokemons.where(type1: @pokemon_types).or(@pokemons.where(type2: @pokemon_types)) if @pokemon_types&.present?
    case @pokemon_titles["sword"]
    when "1"
      @pokemons = @pokemons.where(appear_on_sword: true)
    when "2"
      @pokemons = @pokemons.where(appear_on_sword: false)
    else
      # do not concern
    end
    case @pokemon_titles["shield"]
    when "1"
      @pokemons = @pokemons.where(appear_on_shield: true)
    when "2"
      @pokemons = @pokemons.where(appear_on_shield: false)
    else
      # do not concern
    end
  end
end
