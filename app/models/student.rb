class Student < ActiveRecord::Base
	belongs_to :user
	belongs_to :batch
    has_many :stories

  	has_attached_file :avatar,
                    :styles => { :thumb => ["200x200>", :jpg]},
                    :processors => [:ghostscript, :thumbnail],
                    :convert_options => { :all => '-colorspace RGB -flatten -density 300 -quality 100' }, 
                    :path => ":page_path/:class/:id/:resource_token/:style/:filename"
    validates_attachment :avatar, :content_type => {:content_type => %w(image/jpeg image/jpg image/png)}

    def to_s
    	self.user.name
    end
end
