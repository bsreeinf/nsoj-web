class Gallery < ActiveRecord::Base

	  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :image, styles: {
    thumb: '180x180>',
    large: '1280x1000>',
    medium: '800x600>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment :image, presence: true
end
