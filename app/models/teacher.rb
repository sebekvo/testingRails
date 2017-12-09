class Teacher < ApplicationRecord
  has_many :lessons
  has_many :teachers_courses

end
