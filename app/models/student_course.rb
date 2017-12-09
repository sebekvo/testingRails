class StudentCourse < ApplicationRecord
  belongs_to :student
  belongs_to :course

  validates :student_id, presence: true
  validates :course_id, presence: true

  COURSE_NAMES = {}
  courses = Course.all
  courses.each do |b|
    COURSE_NAMES["#{b.title}"] = b.id
  end


  STUDENT_NAMES = {}
  students = Student.all
  students.each do |b|
    STUDENT_NAMES["#{b.first_name} #{b.last_name}"] = b.id
  end


end
