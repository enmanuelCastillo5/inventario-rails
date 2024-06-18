class Product < ApplicationRecord
    has_many :movements
    validates :name, presence: true
    validates :reference, presence: true
    validates :description, presence: true, length: {minimum:10, maximum:100}

    def quantity
        total = 0
        self.movements.each do |movement|
            if movement.movement_type == Movement::MovementType[:add]
                total += movement.quantity
            else
                total -= movement.quantity
            end
        end
    return total
    end
end
