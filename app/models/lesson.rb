class Lesson < ApplicationRecord
  belongs_to :room
  belongs_to :teacher
  belongs_to :course

  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :duration, presence: false
  validates :teacher_id, presence: true
  validates :room_id, presence: true
  validates :course_id, presence: true

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

  ROOMS_NAMES = {}
  rooms = Room.all
  rooms.each do |b|
    ROOMS_NAMES["#{b.title}"] = b.id
  end

end
