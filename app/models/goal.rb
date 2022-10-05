class Goal < ApplicationRecord
  belongs_to :life_part

	# has_many :actions
	# has_many :tasks, through: :actions

  validates :name, presence: true
  validates :points, numericality: true
end
