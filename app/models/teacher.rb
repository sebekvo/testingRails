class Teacher < ApplicationRecord
  has_many :lessons
  has_many :teacher_courses

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: false

end
