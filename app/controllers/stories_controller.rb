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
		@feature_title = "For the Love of Art"
	    @feature_byline = "Ipsita Kabiraj and Neil Gershom"
	    @main_background = ActionController::Base.helpers.asset_path('features/ftloa/main.png')
	    @main_title_video = "https://www.youtube.com/watch?v=rKGIwp6oEKQ"
	    
	    @img_boxes = []
	    @img_boxes << {src: ActionController::Base.helpers.asset_path('features/ftloa/higgins.png'), desc: "Milena Braganca wiping varnish from the painting"}
	    @img_boxes << {src: ActionController::Base.helpers.asset_path('features/ftloa/japan_paper.png'), desc: "Caetano Colaco peels Japan paper off a painting"}

	    @video_boxes = []
	    @video_boxes << {src: ActionController::Base.helpers.asset_path('features/ftloa/wooden.webm'), desc: "The restored statute of Joseph holding infant Jesus"}
	    @video_boxes << {src: ActionController::Base.helpers.asset_path('features/ftloa/horse.webm'), desc: "Restoring the painting of Dom Sebastian"}

	    @text_boxes = []
	    @text_boxes << "Japan paper’s microscopic fibres allows for it to be stronger and acts like a support for a damaged painting, allowing conservators to work on it."
	    @text_boxes << "The edifice that presently houses the seminary was constructed by the Jesuits with donations from the boy-king of Portugal, Dom Sebastião, in an area occupied originally by an Islamic fortress. The Seminary also possesses a 19th-century pipe organ that is played during liturgical services. In 1886, the Archbishop of Goa and Daman was bestowed the honorific title of Patriarch of the East Indies. Since then the seminary is known as the \"Patriarchal Seminary of Rachol\""
	    @text_boxes << "On November 4,1966 Italy’s Arno river bursts its banks in the city of Florence, the birthplace of the Italian Renaissance, killing more than 30 people. This damaged or destroyed scores of priceless works of art and rare books. The flood drenched the city centre in an estimated 18 billion gallons of water and mud, and at some sites, the water was more than 20 feet deep. In the aftermath of the disaster, thousands of volunteers from around the world who were dubbed ‘angeli del fango’ or ‘mud angels’ flocked to Italy to help rescue Florence’s ancient art and literary treasures and assist with the effort to clean up the city. Credit- history.com"

	    @blockquotes = []
	    @blockquotes << {text: "Conservation is keeping the painting or statue as is and looking after it and maybe moving it, if needed, in order to preserve it. Whereas restoration happens when you can’t live with the piece of art as it is and you insist on re-doing it- repainting or replacing certain elements of the artefact.", byline: "Caterina Goodhart"}
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

