class PokemonType < ApplicationRecord
  belongs_to :pokemon
  belongs_to :type

  def print
    Pokemon.find_by(id: self.pokemon_id).name + " | " + Type.find_by(id: self.type_id).name
  end
end
