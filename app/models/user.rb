class User < ApplicationRecord
  has_secure_password

  has_many :trackers
  has_many :courses, through: :trackers, dependent: :destroy

  validates :name, presence: true, length: { minimum: 6 }
  validates :username, presence: true, length: { minimum: 6 }
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true, length: { minimum: 6 }
end
