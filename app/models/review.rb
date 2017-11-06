class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user
  
  validates :review, presence: true, length: { in: 2..300 }
end
