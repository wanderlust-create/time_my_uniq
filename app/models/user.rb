class User < ApplicationRecord
  validates :user_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
end
