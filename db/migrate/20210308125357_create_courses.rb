class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :number_of_lessons
      t.integer :lesson_completed
      t.integer :hours_needed
      t.integer :hours_spend

      t.timestamps
    end
  end
end
