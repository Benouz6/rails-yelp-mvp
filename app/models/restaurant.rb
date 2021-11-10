class Restaurant < ApplicationRecord
  validates :name, :adress, :category, presence: true
end
