class StoriesController < ApplicationController
	before_action :set_story, only: [:show]
	before_action :set_story_categories, :set_stories

	def index
		@sidebar_length = 6
		@main_stories = Story.all.order(created_at: :desc, last_accessed_at: :desc).limit(12)
		@popular_stories = Story.all.order(access_counter: :desc, last_accessed_at: :desc, created_at: :desc)
		@latest_stories = Story.all.order(created_at: :desc)

		@categoryMode = false
		if(params.has_key?(:category_id))
			@categoryMode = true
			@category_id = params[:category_id]
			@stories = Story.all.where(story_category_id: @category_id)
		end
		puts "Category mode : #{@categoryMode}"
	end

	def show
		@story.touch(:last_accessed_at)
		@story.increment!(:access_counter)
	end

  private

    def set_story
		@story = Story.find_by_slug(params[:id])
	end

	def set_stories
		@stories = Story.all
	end

	def set_story_categories
		@story_categories = StoryCategory.all
	end

    def story_params
      params.require(:story)
    end
end

