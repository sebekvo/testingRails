# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Building.create([{title: "College", code: "1234"},
                 {title: "Classic 7", code: "12345"},
                 {title: "Parukářka", code: "22345"}])

Room.create([{title: "Einstain", code: "1.101", building_id: 1},
             {title: "NewCaste", code: "1.102", building_id: 1},
             {title: "NextRoom", code: "2.101", building_id: 2}])

Teacher.create([ {first_name: "jan", last_name: "Novák"},{first_name: "jan", last_name: "nov"}])

Course.create([{title: "webové aplikace", code: "WEB", study_type_enum: "czech", language_enum: "full_time"}, {title: "Matematika", code: "MA", study_type_enum: "czech", language_enum: "full_time"}])

TeacherCourse.create([{teacher_id: 1, course_id: 1}, {teacher_id: 2, course_id: 2}])

Student.create([{first_name: "Jan", last_name: "Novák", study_type_enum: "czech"},{first_name: "John", last_name: "Novotný", study_type_enum: "czech"}])

StudentCourse.create([{student_id: 1, course_id: 1}, {student_id: 1, course_id: 2},{student_id: 2, course_id: 2}])




Lesson.create([{start_at: "2017-12-09 10:00:00 UTC", end_at: "2017-12-09 12:15:00 UTC", teacher_id: 1, room_id: 1, course_id: 1},
               {start_at: "2017-12-10 12:15:00 UTC", end_at: "2017-12-10 16:00:00 UTC", teacher_id: 1, room_id: 1, course_id: 1},
               {start_at: "2017-12-16 12:45:00 UTC", end_at: "2017-12-16 13:45:00 UTC", teacher_id: 1, room_id: 1, course_id: 2},
               {start_at: "2017-12-16 07:00:00 UTC", end_at: "2017-12-16 08:00:00 UTC", teacher_id: 1, room_id: 1, course_id: 1},
               {start_at: "2017-12-16 16:15:00 UTC", end_at: "2017-12-16 18:00:00 UTC", teacher_id: 1, room_id: 1, course_id: 2},
               {start_at: "2017-12-17 09:15:00 UTC", end_at: "2017-12-17 10:30:00 UTC", teacher_id: 1, room_id: 1, course_id: 1},
               {start_at: "2017-12-20 07:30:00 UTC", end_at: "2017-12-20 08:45:00 UTC", teacher_id: 1, room_id: 1, course_id: 2},
               {start_at: "2017-12-19 08:45:00 UTC", end_at: "2017-12-19 18:00:00 UTC", teacher_id: 1, room_id: 1, course_id: 1},
               {start_at: "2017-12-18 08:35:00 UTC", end_at: "2017-12-18 10:20:00 UTC", teacher_id: 1, room_id: 1, course_id: 1}])
