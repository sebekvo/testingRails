class Course < ApplicationRecord
  has_many :teacher_courses
  has_many :teachers, through: :teacher_courses

  has_many :student_courses
  has_many :students, through: :student_courses

  extend Enumerize

  validates :title, presence: true
  validates :code, presence: true, uniqueness: true
  validates :study_type_enum, presence: true
  validates :language_enum, presence: true

  enumerize :study_type_enum, in: {czech: "czech", english: "english"}

end
