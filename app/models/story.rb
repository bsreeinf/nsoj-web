class Story < ActiveRecord::Base
  belongs_to :student
  belongs_to :story_category

  has_attached_file :blog_image,
                    :styles => { :thumb => ["200x200>", :jpg]},
                    :processors => [:ghostscript, :thumbnail],
                    :convert_options => { :all => '-colorspace RGB -flatten -density 300 -quality 100' }, 
                    :path => ":page_path/:class/:id/:resource_token/:style/:filename"
    validates_attachment :blog_image, :content_type => {:content_type => %w(image/jpeg image/jpg image/png)}
end
