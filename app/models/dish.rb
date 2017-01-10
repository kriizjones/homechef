class Dish < ApplicationRecord
  validates_presence_of :name, :description, :price, :readytime, :portions, presence: true

end
