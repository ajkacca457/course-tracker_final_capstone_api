class Course < ApplicationRecord

  validates :name, presence:true
  validates :number_of_lessons, presence:true
  validates :lesson_completed, presence:true
  validates :hours_needed, presence:true
  validates :hours_spend, presence:true  

end
