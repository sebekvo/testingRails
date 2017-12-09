class Course < ApplicationRecord
  has_many :teacher_courses

  extend Enumerize

  enumerize :study_type_enum, in: {czech: "czech", english: "english"}
  enumerize :language_enum, in: {full_time: "full_time", part_time: "part_time"}

end
