class User < ApplicationRecord
  has_secure_password

  has_many :trackers
  has_many :courses, through: :trackers, dependent: :destroy

  REGEX_PATTERN = /\A[a-z0-9\+\-_\.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  validates :name, presence: true, length: { minimum: 6 }
  validates :username, presence: true, length: { minimum: 6 }
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true, format: { with: REGEX_PATTERN },
                    uniqueness: true, length: { minimum: 5, maximum: 25 }
end
