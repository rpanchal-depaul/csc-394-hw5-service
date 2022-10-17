require "application_system_test_case"

class CourseEnrollmentsTest < ApplicationSystemTestCase
  setup do
    @course_enrollment = course_enrollments(:one)
  end

  test "visiting the index" do
    visit course_enrollments_url
    assert_selector "h1", text: "Course enrollments"
  end

  test "should create course enrollment" do
    visit course_enrollments_url
    click_on "New course enrollment"

    fill_in "Course", with: @course_enrollment.course_id
    fill_in "Student", with: @course_enrollment.student_id
    click_on "Create Course enrollment"

    assert_text "Course enrollment was successfully created"
    click_on "Back"
  end

  test "should update Course enrollment" do
    visit course_enrollment_url(@course_enrollment)
    click_on "Edit this course enrollment", match: :first

    fill_in "Course", with: @course_enrollment.course_id
    fill_in "Student", with: @course_enrollment.student_id
    click_on "Update Course enrollment"

    assert_text "Course enrollment was successfully updated"
    click_on "Back"
  end

  test "should destroy Course enrollment" do
    visit course_enrollment_url(@course_enrollment)
    click_on "Destroy this course enrollment", match: :first

    assert_text "Course enrollment was successfully destroyed"
  end
end
