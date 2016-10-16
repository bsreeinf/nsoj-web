class StoriesController < ApplicationController
	before_action :set_story, only: [:show]
	before_action :set_story_categories

	def index
		@stories = Story.all
	end

	def show
		
	end

  private

    def set_story
		@story = Story.find(params[:id])
	end

	def set_story_categories
		@story_categories = StoryCategory.all
	end

    def story_params
      params.require(:story)
    end
end

