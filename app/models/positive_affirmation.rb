class PositiveAffirmation < ApplicationRecord
  validates :category, presence: true
  validates :description, presence: true
end
