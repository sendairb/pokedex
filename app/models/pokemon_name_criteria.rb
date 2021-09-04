class PokemonNameCriteria
  def initialize(pokemon_name)
    @pokemon_name = pokemon_name
  end

  def accept(pokemon) #pokemonはPokemonのインスタンス想定
    pokemon.include_name?(@pokemon_name)
  end
end
