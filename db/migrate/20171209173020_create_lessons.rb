class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.integer :duration
      t.integer :teacher_id
      t.integer :room_id
      t.integer :course_id

      t.timestamps
    end
  end
end
