class Review < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :hotel
  has_many :review_comments, dependent: :destroy
end
