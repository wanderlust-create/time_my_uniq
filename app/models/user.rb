class User < ApplicationRecord
    validates :user_name, presence: true
    validates :user_name, uniqueness: { case_sensitive: false }
    validates :email, presence: true
    validates :email, uniqueness: { case_sensitive: false }
end
