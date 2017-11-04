class Book < ApplicationRecord
  belongs_to :genre
  belongs_to :user
  has_many :reviews
  
  validates :title, presence: true, uniqueness: { case_sensitive: false },length: { in: 2..30 }
  validates :author, presence: true, length: { in: 2..20 }

end
