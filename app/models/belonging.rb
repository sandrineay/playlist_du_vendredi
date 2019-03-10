class Belonging < ApplicationRecord
  belongs_to :playlist
  belongs_to :song
  belongs_to :category, optional: true
end
