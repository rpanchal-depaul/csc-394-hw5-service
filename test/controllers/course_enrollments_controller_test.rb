require "test_helper"

class CourseEnrollmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_enrollment = course_enrollments(:one)
  end

  test "should get index" do
    get course_enrollments_url
    assert_response :success
  end

  test "should get new" do
    get new_course_enrollment_url
    assert_response :success
  end

  test "should create course_enrollment" do
    assert_difference("CourseEnrollment.count") do
      post course_enrollments_url, params: { course_enrollment: { course_id: @course_enrollment.course_id, student_id: @course_enrollment.student_id } }
    end

    assert_redirected_to course_enrollment_url(CourseEnrollment.last)
  end

  test "should show course_enrollment" do
    get course_enrollment_url(@course_enrollment)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_enrollment_url(@course_enrollment)
    assert_response :success
  end

  test "should update course_enrollment" do
    patch course_enrollment_url(@course_enrollment), params: { course_enrollment: { course_id: @course_enrollment.course_id, student_id: @course_enrollment.student_id } }
    assert_redirected_to course_enrollment_url(@course_enrollment)
  end

  test "should destroy course_enrollment" do
    assert_difference("CourseEnrollment.count", -1) do
      delete course_enrollment_url(@course_enrollment)
    end

    assert_redirected_to course_enrollments_url
  end
end
