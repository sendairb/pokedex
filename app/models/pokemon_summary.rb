class PokemonSummary
  attr_reader :name, :regional_pokedex_no, :type1, :type2, :appear_on_sword, :appear_on_shield

  def initialize(name, regional_pokedex_no, type1, type2, appear_on_sword, appear_on_shield)
    @name = name
    @regional_pokedex_no = regional_pokedex_no
    @type1 = type1
    @type2 = type2
    @appear_on_sword = appear_on_sword
    @appear_on_shield = appear_on_shield
  end

  def include_name?(part_of_name)
    @name.include?(part_of_name)
  end

  def has_any_type?(types)
    types.any? { |type| type == @type1 || type == @type2 }
  end
end
