class LifePart < ApplicationRecord
  belongs_to :my_life

	has_many :goals
	has_many :actions, through: :goals
	# has_many :tasks, through: :actions

  validates :name, presence: true
  validates :description, presence: true
  validates :points, numericality: true
end
