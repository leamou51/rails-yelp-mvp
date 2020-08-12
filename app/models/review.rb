class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, :restaurant, presence: true
  validates :rating, inclusion: { in: [0,1,2,3,4,5], message: "%{value} is not between 0 and 5" }
  validates :rating, numericality: { only_integer: true }
end
