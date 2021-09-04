require 'forwardable'

class PokemonSummaryList
  extend Forwardable

  def_delegators :@summary_list, :each

  def initialize(summary_list)
    @summary_list = summary_list
  end

  def filter_by_name(name_criteria)
    filtered_list = @summary_list.select { |summary| name_criteria.accept(summary) }
    PokemonSummaryList.new(filtered_list)
  end

  def filter_by_types(types_criteria)
    filtered_list = @summary_list.select { |summary| types_criteria.accept(summary) }
    PokemonSummaryList.new(filtered_list)
  end
end
