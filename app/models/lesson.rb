class Lesson < ApplicationRecord
  belongs_to :room
  belongs_to :teacher

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

end
