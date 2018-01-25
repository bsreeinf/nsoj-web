class EventDatum < ActiveRecord::Base
	belongs_to :event

	has_attached_file :image, styles: {
	    thumb: '180x180>',
	    medium: '800x600>'
	}

	# Validate the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	validates_attachment :image, presence: true
end
