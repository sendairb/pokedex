class PokemonCriteria
  attr_reader :name_criteria, :types_criteria

  def initialize(criteria_list)
    @criteria_list = criteria_list
  end

  def accept(summary)
    @criteria_list.all? { |criteria| criteria.accept(summary) }
  end
end
