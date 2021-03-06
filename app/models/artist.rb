class Artist < ApplicationRecord
  has_many :authorings
  has_many :songs, through: :authorings

  validates :name, uniqueness: true
end
