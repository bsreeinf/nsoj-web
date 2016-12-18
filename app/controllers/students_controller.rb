class StudentsController < InheritedResources::Base
	before_action :set_student, only: [:show]

	def index
		@students = Student.order('id asc, bio IS NULL, bio DESC')
	end

	def show
		@student_stories = @student.stories.order(access_counter: :desc, last_accessed_at: :desc)
		@nsojtvs= @student.nsoj_tvs.order(access_counter: :desc, last_accessed_at: :desc)
		# redirect_to_good_slug(@student) and return if bad_slug?(@student)
	end

  private

	def set_student
		@student = Student.find_by_slug(params[:id])
	end

    def student_params
      params.require(:student).permit(:user_id, :batch_id, :avatar, :bio)
    end
end