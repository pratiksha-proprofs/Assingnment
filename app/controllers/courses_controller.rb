class CoursesController < ApplicationController

	skip_before_action :verify_authenticity_token

	def create
		@course = Course.new(course_params)
	    if @course.save
	      render json: @course, status: 200
	    else
	      render json: {errors: @course.errors.full_messages}, status: 422
	    end
	end

	def index
		courses = Course.includes(:tutors)
    render json: courses, include: :tutors
	end

	private

	def course_params
		params.require(:course).permit(:name, :description, tutors_attributes: [:name, :expertise])
	end
end
