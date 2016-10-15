class StudentsController < InheritedResources::Base
	before_action :set_student, only: [:show]

	def index
		@students = Student.all
	end

	def show
		@student_stories = Story.all.where(student_id: params[:id])
		@student_categories = @student_stories.select(:story_category_id).uniq
	end

  private

	def set_student
		@student = Student.find(params[:id])
	end

    def student_params
      params.require(:student).permit(:user_id, :batch_id, :avatar, :bio)
    end
end