require_relative '../domains/pokemons/pokemons_repository.rb'

class PokedexesController < ApplicationController
  def main
    @pokemons = PokemonsRepository.new.pokemons
  end
end
