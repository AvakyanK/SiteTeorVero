

class Wishlist < ApplicationRecord
  validates :name, presence: true

  belongs_to :user
  has_many :wishes

  before_create :set_path

  def set_path
    unless self.path
      # TODO We need another method for path generation
      self.path = name
    end
  end
end