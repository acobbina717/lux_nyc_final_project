class ReviewWithCommentsSerializer < ActiveModel::Serializer
  attributes :id :user_id :hotel_id :review :rating
  has_many :review_comments
end
