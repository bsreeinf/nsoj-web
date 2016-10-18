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

    before_save do
        self.slug = self.user.name.downcase.gsub(/[^ 0-9A-Za-z\-]/,'').gsub(' ','-')
    end

    before_save do
        init_slug = self.slug.empty? ? self.user.name : self.slug
        init_slug = init_slug.downcase.gsub(/[^ 0-9A-Za-z\-]/,'').gsub(' ','-')
        temp = init_slug
        i=2
        self.slug = loop do   
            break temp unless self.class.exists?(slug: temp)
            temp = "#{init_slug}-#{i}"
            i+=1
        end
    end
end
