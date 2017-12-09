require 'test_helper'

class AssignmentsStudentCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignments_student_course = assignments_student_courses(:one)
  end

  test "should get index" do
    get assignments_student_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_assignments_student_course_url
    assert_response :success
  end

  test "should create assignments_student_course" do
    assert_difference('AssignmentsStudentCourse.count') do
      post assignments_student_courses_url, params: { assignments_student_course: { course_id: @assignments_student_course.course_id, student_id: @assignments_student_course.student_id } }
    end

    assert_redirected_to assignments_student_course_url(AssignmentsStudentCourse.last)
  end

  test "should show assignments_student_course" do
    get assignments_student_course_url(@assignments_student_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignments_student_course_url(@assignments_student_course)
    assert_response :success
  end

  test "should update assignments_student_course" do
    patch assignments_student_course_url(@assignments_student_course), params: { assignments_student_course: { course_id: @assignments_student_course.course_id, student_id: @assignments_student_course.student_id } }
    assert_redirected_to assignments_student_course_url(@assignments_student_course)
  end

  test "should destroy assignments_student_course" do
    assert_difference('AssignmentsStudentCourse.count', -1) do
      delete assignments_student_course_url(@assignments_student_course)
    end

    assert_redirected_to assignments_student_courses_url
  end
end
