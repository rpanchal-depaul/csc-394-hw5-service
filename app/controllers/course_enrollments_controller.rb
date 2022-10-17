class CourseEnrollmentsController < ApplicationController
  before_action :set_course_enrollment, only: %i[ show edit update destroy ]

  # GET /course_enrollments or /course_enrollments.json
  def index
    @course_enrollments = CourseEnrollment.all
  end

  # GET /course_enrollments/1 or /course_enrollments/1.json
  def show
  end

  # GET /course_enrollments/new
  def new
    @course_enrollment = CourseEnrollment.new
  end

  # GET /course_enrollments/1/edit
  def edit
  end

  # POST /course_enrollments or /course_enrollments.json
  def create
    @course_enrollment = CourseEnrollment.new(course_enrollment_params)

    respond_to do |format|
      if @course_enrollment.save
        format.html { redirect_to course_enrollment_url(@course_enrollment), notice: "Course enrollment was successfully created." }
        format.json { render :show, status: :created, location: @course_enrollment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_enrollments/1 or /course_enrollments/1.json
  def update
    respond_to do |format|
      if @course_enrollment.update(course_enrollment_params)
        format.html { redirect_to course_enrollment_url(@course_enrollment), notice: "Course enrollment was successfully updated." }
        format.json { render :show, status: :ok, location: @course_enrollment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_enrollments/1 or /course_enrollments/1.json
  def destroy
    @course_enrollment.destroy

    respond_to do |format|
      format.html { redirect_to course_enrollments_url, notice: "Course enrollment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_enrollment
      @course_enrollment = CourseEnrollment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_enrollment_params
      params.require(:course_enrollment).permit(:student_id, :course_id)
    end
end
