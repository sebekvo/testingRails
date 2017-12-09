class TeacherCourse < ApplicationRecord
  belongs_to :teacher
  belongs_to :course

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
