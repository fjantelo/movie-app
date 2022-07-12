class Movie < ApplicationRecord
  has_many :actors
  validates :title, presence: true
  validates :year, numericality: true
  validates :plot, length: { in: 6..500 }
  validates :director, length: { minimum: 2 }
end
