class StoryCategory < ActiveRecord::Base
  has_many :categories
  has_many :stories, through: :categories

  def to_s
    	self.title
    end
end
