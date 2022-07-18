class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  validates :title, presence: true
  validates :year, numericality: true
  validates :plot, length: { in: 6..500 }
  validates :director, length: { minimum: 2 }

  def genre_names
    names = []
    genres.each do |genre|
      names << genre.name
    end
    return names
  end
end
