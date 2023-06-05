

class Wish < ApplicationRecord
  validates :name, :vero, :iks,:answer, presence: true
  belongs_to :wishlist
end

