class Category < ActiveRecord::Base
	belongs_to :story
	belongs_to :story_category
end
