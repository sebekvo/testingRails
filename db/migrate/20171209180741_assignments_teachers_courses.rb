class AssignmentsTeachersCourses < ActiveRecord::Migration[5.1]

  def change
    create_table :assignments_teachers_courses, :id => false do |t|
      t.integer :teacher_id
      t.integer :course_id
    end
  end

end
