class Song < ApplicationRecord
  has_many :authorings
  has_many :artists, through: :authorings
  has_many :belongings

  validates :title, uniqueness: true
end
