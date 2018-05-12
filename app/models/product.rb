class Product < ApplicationRecord
  validates :title, :price, presence: true
  validates_length_of :title, minimum: 5
end
