class Movement < ApplicationRecord
  belongs_to :product
  MovementType = {add: 0, remove: 1}
  validates :quantity, presence: true, numericality: true

  def self.get_movement_types
    {
      "Agregar" => MovementType[:add],
      'Quitar' => MovementType[:remove]
    }
  end

  def movement_type_name
    return 'Agregar' if movement_type == MovementType[:add]
    return 'Quitar' if movement_type == MovementType[:remove]
  end
end
