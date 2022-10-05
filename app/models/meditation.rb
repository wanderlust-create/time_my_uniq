class Meditation < ApplicationRecord
  validates :category, presence: true
  validates :link, presence: true
end
