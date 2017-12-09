class Teacher < ApplicationRecord
  has_many :lessons
  has_many :teacher_courses

end
