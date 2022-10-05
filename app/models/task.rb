class Task < ApplicationRecord
  belongs_to :action

  validates :name, presence: true
  validates :points, numericality: true
end
