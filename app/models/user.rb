


class User < ApplicationRecord


  validates :name, :email, :pass_word, presence: true
  validates :email, uniqueness: true

  has_many :wishlists

end