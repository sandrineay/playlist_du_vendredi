class Playlist < ApplicationRecord
  has_many :belongings
  has_many :songs, through: :belongings
end
