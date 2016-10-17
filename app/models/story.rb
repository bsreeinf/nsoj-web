class Story < ActiveRecord::Base
  belongs_to :student
  belongs_to :story_category
  before_create :set_default_last_accessed_at
  
  def set_default_last_accessed_at
    self.last_accessed_at = Time.now
  end

  has_attached_file :blog_image,
                    styles: {
					    thumb: '200x200>',
					}

    validates_attachment :blog_image, :content_type => {:content_type => %w(image/jpeg image/jpg image/png)}
end
