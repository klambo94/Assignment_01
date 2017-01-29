class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer :course_number
      t.string :course_name
      t.text :course_description
      t.string :course_week_date
      t.time :course_time
      t.integer :course_room_number
      t.string :professor

      t.timestamps
    end
  end
end
