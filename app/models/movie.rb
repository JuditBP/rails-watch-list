class Movie < ApplicationRecord
  has_many :lists, through: :bookmarks
  has_many :bookmarks
  # a movie should have a name, and an overview unique
  validates :title, :overview, presence: true, uniqueness: true
end
