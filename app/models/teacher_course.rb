class TeacherCourse < ApplicationRecord
  belongs_to :teacher
  belongs_to :course

  validates :teacher_id, presence: true
  validates :course_id, presence: true

  COURSES_NAMES = {}
  courses = Course.all
  courses.each do |b|
    COURSES_NAMES["#{b.title}"] = b.id
  end

  TEACHERS_NAMES = {}
  teachers = Teacher.all
  teachers.each do |b|
    TEACHERS_NAMES["#{b.first_name} #{b.last_name}"] = b.id
  end

end
