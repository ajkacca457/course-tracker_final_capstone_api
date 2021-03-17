class Course < ApplicationRecord
  has_one :tracker
  has_one :user, through: :tracker

  validates :name, presence: true,length: { minimum: 6 }
  validates :number_of_lessons, presence: true
  validates :lesson_completed, presence: true
  validates :hours_needed, presence: true
  validates :hours_spend, presence: true
end
