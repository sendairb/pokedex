class PokemonTypesCriteria

  def initialize(types)
    @types = types
  end

  def accept(summary)
    return true if @types.nil?

    # 絞り込み条件のタイプと、
    # 種族概要の持つタイプが一つでも一致したらacceptとする
    summary.has_any_type?(@types)
  end
end
