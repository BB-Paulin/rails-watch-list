class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  validates :title, presence: true, uniqueness: { scope: :title }
  validates :overview, presence: true
  #validates :title, uniqueness: true, allow_blank: false
  #validates :overview, presence: true, allow_blank: false
  #validates :rating, presence: true
end
