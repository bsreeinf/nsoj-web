class StoriesController < ApplicationController
	before_action :set_story, only: [:show]
	before_action :set_story_categories, :set_stories, :hide_main_nav_bar, :set_sidebar_length

	def index
		@categoryMode = false
		@stories = nil
		if(params.has_key?(:category_id) || params.has_key?(:c))
			@category_id = nil
			if params.has_key?(:category_id)
				@category_id = params[:category_id]
			elsif params.has_key?(:c)
				@category_name = params[:c].downcase
				@category = StoryCategory.where('lower(title) = ?', @category_name).first
				if !@category.nil?
					@category_id = @category.id
				end
			end
			if !@category_id.nil?
				@stories = Story.where(:id => Category.select(:story_id)
										.where(story_category_id: @category_id)
						)
						.order(created_at: :desc, last_accessed_at: :desc)
						.limit(16)
			end
		end
		if @stories.nil? || @stories.empty?
			set_stories
		else
			@categoryMode = true
		end
	end

	def show
		@story.touch(:last_accessed_at)
		@story.increment!(:access_counter)

		@trending_stories = Story.all.order(access_counter: :desc, last_accessed_at: :desc, created_at: :desc).limit(15)
	end

	def feature1
		
	end

  private

    def set_story
		@story = Story.find_by_slug(params[:id])
	end

	def set_sidebar_length
		@sidebar_length = 15
	end

	def set_stories
		@main_stories = Story.all.order(created_at: :desc, last_accessed_at: :desc).limit(12)
		@videos= NsojTv.where(nsoj_tv_category_id: 2).order("created_at DESC").limit(12)
	end

	def set_story_categories
		@story_categories = StoryCategory.all
	end

    def story_params
      params.require(:story)
    end

    def hide_main_nav_bar
    	@hide_main_nav = true
    end
end

