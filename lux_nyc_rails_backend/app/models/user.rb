class User < ApplicationRecord
  has_many :reservations
  has_many :hotels, through: :reservations
  has_many :reviews
  has_many :review_comments
end
