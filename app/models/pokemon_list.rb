class PokemonList
  attr_reader :pokemons

  def initialize(pokemons)
    @pokemons = pokemons
  end

  def filter_by_name_criteria(criteria)
    PokemonList.new(@pokemons.select { |pokemon| criteria.accept(pokemon) })
  end
end
