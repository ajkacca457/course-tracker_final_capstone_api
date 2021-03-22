class RemoveUserFromCourses < ActiveRecord::Migration[6.0]
  def change
    remove_reference :courses, :user, foreign_key: true
  end
end
