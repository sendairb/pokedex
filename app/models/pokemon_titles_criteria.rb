class PokemonTitlesCriteria
  def initialize(titles)
    @titles = titles
  end

  def accept(summary)
    summary.can_gotcha_in_sword?(@titles['sword']) && summary.can_gotcha_in_shield?(@titles['shield'])
  end
end
