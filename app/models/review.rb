class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: true
  validates :rating, numericality: greater_than
  validates :rating, numericality: less_than
end
