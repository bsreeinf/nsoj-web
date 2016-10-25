class Story < ActiveRecord::Base
  has_many :authors
  has_many :students, through: :authors

  has_many :story_byline_students, -> { where author_type_id: 1 }, class_name: 'Author'
  has_many :story_bylines, :through => :story_byline_students, class_name: 'Student', :source => :student

  has_many :video_byline_students, -> { where author_type_id: 2 }, class_name: 'Author'
  has_many :video_bylines, :through => :video_byline_students, class_name: 'Student', :source => :student

  accepts_nested_attributes_for :authors, :allow_destroy => true, :reject_if => :all_blank

  belongs_to :story_category
  before_create :set_default_last_accessed_at
  
  def set_default_last_accessed_at
    self.last_accessed_at = Time.now
  end

  has_attached_file :blog_image,
                    styles: {
					    thumb: '350x200#',
              small: '100x100#'
					}

  validates_attachment :blog_image, :content_type => {:content_type => %w(image/jpeg image/jpg image/png )}

  def to_param
    slug
  end

  before_save do
    init_slug = self.slug.empty? ? self.title : self.slug
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
