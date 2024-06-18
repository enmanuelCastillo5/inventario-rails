class Product < ApplicationRecord
    validates :name, presence: true
    validates :reference, presence: true
    validates :description, presence: true, length: {minimum:10, maximum:100}
end
