class Pokemon < ApplicationRecord
  belongs_to :regional_pokedex

  scope :search_by_name, ->(name) { name&.present? ? where("name like ?", "%#{name}%") : self }
  scope :search_by_name_criteria, ->(criteria) { select { |pokemon| criteria.accept(pokemon) } }

  def include_name?(part_of_name)
    self.name.include?(part_of_name)
  end

end
