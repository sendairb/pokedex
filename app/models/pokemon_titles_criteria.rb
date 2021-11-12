class PokemonTitlesCriteria
  APPEAR = 'appear'
  NOT_APPEAR = 'not_appear'
  NOT_CONCERN = 'not_concern'

  def initialize(titles)
    @titles = titles
  end

  def accept(summary)
    appear_on_sword?(summary) && appear_on_shield?(summary)
  end

  private

  def is_gotcha?(title, appear)
    case title
    when NOT_CONCERN
      true
    when APPEAR
      appear
    when NOT_APPEAR
      !appear
    end
  end

  def appear_on_sword?(summary)
    is_gotcha?(@titles['sword'], summary.appear_on_sword)
  end

  def appear_on_shield?(summary)
    is_gotcha?(@titles['shield'], summary.appear_on_shield)
  end
end