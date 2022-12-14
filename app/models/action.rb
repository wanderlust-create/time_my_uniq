class Action < ApplicationRecord
  belongs_to :goal

  has_many :tasks, dependent: :destroy

  validates :name, presence: true
  validates :points, numericality: true
end
