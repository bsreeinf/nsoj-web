class NsojPost < ActiveRecord::Base
	has_attached_file :document,
                    :styles => { :thumb => ["200x320#", :jpg]},
                    :processors => [:ghostscript, :thumbnail],
                    :convert_options => { :all => '-colorspace RGB -flatten -density 300 -quality 100' }, 
                    :s3_host_alias => "nsoj.in",
					:url => ":s3_alias_url",
                    :path => ":page_path/:class/:id/:resource_token/:style/:filename"

    validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf)}
  
end
