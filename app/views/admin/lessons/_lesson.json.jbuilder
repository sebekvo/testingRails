json.extract! lesson, :id, :start_at, :end_at, :duration, :teacher_id, :room_id, :course_id, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
