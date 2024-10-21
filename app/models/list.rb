class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  # A list must have a unique name_.
  validates :name, presence: true
  validates :name, uniqueness: true
end
