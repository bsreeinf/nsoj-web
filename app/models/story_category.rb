class StoryCategory < ActiveRecord::Base
  belongs_to :story

  def to_s
    	self.title
    end
end
