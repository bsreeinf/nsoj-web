class NsojPost < ActiveRecord::Base
	has_attached_file :document,
                    :styles => { :thumb => ["700x1100>", :jpg]},
                    :processors => [:ghostscript, :thumbnail],
                    :convert_options => { :all => '-colorspace RGB -flatten -density 300 -quality 100' }, 
                    :path => ":page_path/:class/:id/:resource_token/:style/:filename"
    validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf)}
  
end
