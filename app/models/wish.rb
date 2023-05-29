

class Wish < ApplicationRecord
  validates :name, presence: true
  belongs_to :wishlist
end

