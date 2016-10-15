class StoriesController < InheritedResources::Base


	def index
		@stories = Story.all
	end

	def show
		@story = Story.find(params[:id])
	end
  private

    def story_params
      params.require(:story).permit(:student_id, :title, :content)
    end
end

