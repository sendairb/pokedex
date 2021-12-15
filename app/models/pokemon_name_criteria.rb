class PokemonNameCriteria
  def initialize(pokemon_name)
    @pokemon_name = pokemon_name
  end

  def accept(summary) #pokemonはPokemonSummaryのインスタンス想定
    summary.include_name?(@pokemon_name)
  end
end
