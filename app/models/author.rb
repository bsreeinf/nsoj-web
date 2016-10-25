class Author < ActiveRecord::Base
	belongs_to :story
	belongs_to :student
	belongs_to :author_type
end
