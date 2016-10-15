class StoryCategory < ActiveRecord::Base
  has_many :stories

  def to_s
    	self.title
    end
end
