class Hotel < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations
  has_many :rooms
  has_many :room_types
  has_many :reviews
end
