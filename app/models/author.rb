class Author < ActiveRecord::Base
	belongs_to :story
	belongs_to :student
end
