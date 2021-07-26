class PokemonsController < ApplicationController
  def index
    @regional_pokedex = RegionalPokedex.find_by!(name: params[:regional_pokedex_name])
  end
end
