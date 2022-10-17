json.extract! course_enrollment, :id, :student_id, :course_id, :created_at, :updated_at
json.url course_enrollment_url(course_enrollment, format: :json)
