class PokemonSummaryRepository

  def self.list(criteria)
    regional_pokedex = RegionalPokedex.find_by!(name: 'galar')
    pokemons = regional_pokedex.pokemons.map do |pokemon|
      PokemonSummary.new(
        pokemon.name,
        pokemon.regional_pokedex_no,
        pokemon.type1,
        pokemon.type2,
        pokemon.appear_on_sword,
        pokemon.appear_on_shield
      )
    end

    pokemon_summary_list = PokemonSummaryList.new(pokemons)
    pokemon_summary_list.filter(criteria)
  end
end
