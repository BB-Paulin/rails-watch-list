class Movie < ApplicationRecord
  has_many :bookmarks

  #validates :title, uniqueness: true, allow_blank: false
  #validates :overview, presence: true, allow_blank: false
  #validates :rating, presence: true
end
