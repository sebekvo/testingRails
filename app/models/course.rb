class Course < ApplicationRecord
  has_many :teacher_courses

  extend Enumerize

  validates :title, presence: true
  validates :code, presence: true, uniqueness: true
  validates :study_type_enum, presence: true
  validates :language_enum, presence: true

  enumerize :study_type_enum, in: {czech: "czech", english: "english"}
  enumerize :language_enum, in: {full_time: "full_time", part_time: "part_time"}

end
