class VideoAuthor < ActiveRecord::Base
	belongs_to :nsoj_tv
	belongs_to :student
end
