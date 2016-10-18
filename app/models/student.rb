class Student < ActiveRecord::Base
	belongs_to :user
	belongs_to :batch
    has_many :stories

  	has_attached_file :avatar,
                    styles: {
                    thumb: '200x200>'
                }

    validates_attachment :avatar, :content_type => {:content_type => %w(image/jpeg image/jpg image/png)}

    def to_s
    	self.user.name
    end

    validates_presence_of :slug

    def to_param
        slug
    end
end
