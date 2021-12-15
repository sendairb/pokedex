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
    @pokemon_title_is_appear = [
      { value: PokemonTitlesCriteria::NOT_CONCERN, label: '考慮しない' },
      { value: PokemonTitlesCriteria::APPEAR, label: '出現する' },
      { value: PokemonTitlesCriteria::NOT_APPEAR, label: '出現しない' },
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
    @regional_pokedex = RegionalPokedex.find_by!(name: params[:regional_pokedex_name])

    @pokemon_name = params[:pokemon_name]
    name_criteria = PokemonNameCriteria.new(@pokemon_name)

    @pokemon_types = params[:pokemon_types]
    types_criteria = PokemonTypesCriteria.new(@pokemon_types)

    @pokemon_titles = params[:pokemon_titles]
    titles_criteria = PokemonTitlesCriteria.new(@pokemon_titles)

    criteria_list = [name_criteria, types_criteria, titles_criteria]
    pokemon_criteria = PokemonCriteria.new(criteria_list)
    @pokemons = PokemonSummaryRepository.list(pokemon_criteria) # 種族絞り込み条件
  end
end
