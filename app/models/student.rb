class Student < ActiveRecord::Base
	belongs_to :user
	belongs_to :batch
    has_many :authors
    has_many :stories, through: :authors
    has_many :video_authors
    has_many :nsoj_tvs, through: :video_authors

  	has_attached_file :avatar,
                    styles: {
                    thumb: '200x200>'
                }

    validates_attachment :avatar, :content_type => {:content_type => %w(image/jpeg image/jpg image/png)}

    def to_s
    	self.user.name
    end

    def display_name
        self.user.name
    end

    validates_presence_of :slug

    def to_param
        slug
    end

    before_save do
        init_slug = self.slug.empty? ? self.user.name : self.slug
        init_slug = init_slug.downcase.gsub(/[^ 0-9A-Za-z\-]/,'').gsub(' ','-')
        temp = init_slug
        i=2
        self.slug = loop do   
            break temp unless self.class.exists?(id: !self.id, slug: temp)
            temp = "#{init_slug}-#{i}"
            i+=1
        end
    end
end
