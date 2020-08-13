class Review < ApplicationRecord
  RATINGS = [0,1,2,3,4,5]
  belongs_to :restaurant

  validates :content, :rating, :restaurant, presence: true
  validates :rating, inclusion: { in: RATINGS, message: "%{value} is not between 0 and 5" }
  validates :rating, numericality: { only_integer: true }
end
