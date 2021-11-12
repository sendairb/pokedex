class PokemonTitlesCriteria
  APPEAR = 'appear'
  NOT_APPEAR = 'not_appear'
  NOT_CONCERN = 'not_concern'

  def initialize(titles)
    @titles = titles
  end

  def accept(summary)
    # titles => {
    #   sword: __criteria__,
    #   shield: __criteria__
    # }

    self.appear_on_sword?(summary) && self.appear_on_shield?(summary)
  end

  private

  def appear_on_sword?(summary)
    case @titles['sword']
    when NOT_CONCERN
      true
    when APPEAR
      summary.appear_on_sword
    when NOT_APPEAR
      !summary.appear_on_sword
    end
  end

  def appear_on_shield?(summary)
    case @titles['shield']
    when NOT_CONCERN
      true
    when APPEAR
      summary.appear_on_shield
    when NOT_APPEAR
      !summary.appear_on_shield
    end
  end
end