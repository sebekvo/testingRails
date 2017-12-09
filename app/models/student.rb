class Student < ApplicationRecord

  has_many :student_courses
  has_many :courses, through: :student_courses

  extend Enumerize

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: false

  enumerize :study_type_enum, in: {czech: "czech", english: "english"}
  enumerize :language_enum, in: {full_time: "full_time", part_time: "part_time"}


end
