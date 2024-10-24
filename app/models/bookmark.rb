class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # A bookmark must be linked to a movie and a list, and the
  # [movie, list] pairings should be unique.
  validates :movie_id, uniqueness: { scope: :list_id,
  message: "Movie already exists in the list"}
  # The comment of the bookmark cannot be shorter than 6 char.
  validates :comment, length: { minimum: 6 }
end
