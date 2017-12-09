class Lesson < ApplicationRecord
  belongs_to :room
  belongs_to :teacher

  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :duration, presence: false
  validates :teacher_id, presence: true
  validates :room_id, presence: true
  validates :course_id, presence: true
  validates :code, presence: true, uniqueness: true

  ROOMS_NAMES = {}
  rooms = Room.all
  rooms.each do |b|
    ROOMS_NAMES["#{b.title}"] = b.id
  end

  TEACHERS_NAMES = {}
  teachers = Teacher.all
  teachers.each do |b|
    TEACHERS_NAMES["#{b.first_name} #{b.last_name}"] = b.id
  end

  COURSE_NAMES = {}
  courses = Course.all
  courses.each do |b|
    COURSE_NAMES["#{b.title}"] = b.id
  end

end
