class MyLife < ApplicationRecord
  belongs_to :user

  has_many :life_parts
	has_many :goals, through: :life_parts
	has_many :actions, through: :goals
	# has_many :tasks, through: :actions

  validates :description, presence: true

end
