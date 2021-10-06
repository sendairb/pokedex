class PokemonSummaryRepository

  def self.list
    regional_pokedex = RegionalPokedex.find_by!(name: 'galar')
    pokemons = regional_pokedex.pokemons.map do |pokemon|
      PokemonSummary.new(
        pokemon.name,
        pokemon.regional_pokedex_no,
        pokemon.type1,
        pokemon.type2
      )
    end
    PokemonSummaryList.new(pokemons)
  end

  def self.list_2(criteria)
    regional_pokedex = RegionalPokedex.find_by!(name: 'galar')
    pokemons = regional_pokedex.pokemons.map do |pokemon|
      PokemonSummary.new(
        pokemon.name,
        pokemon.regional_pokedex_no,
        pokemon.type1,
        pokemon.type2
      )
    end

    pokemon_summary_list = PokemonSummaryList.new(pokemons)
    pokemon_summary_list.filter(criteria)
  end
end
