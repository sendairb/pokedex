require 'forwardable'

class PokemonSummaryList
  extend Forwardable

  def_delegators :@summary_list, :each

  def initialize(summary_list)
    @summary_list = summary_list
  end

  def filter(pokemon_criteria)
    filtered_list = @summary_list.select { |summary| pokemon_criteria.accept(summary) }
    PokemonSummaryList.new(filtered_list)
  end
end
