class NsojPost < ActiveRecord::Base
	has_attached_file :document,
                    :styles => { :thumb => ["200x320#", :jpg]},
                    :processors => [:ghostscript, :thumbnail],
                    :convert_options => { :all => '-colorspace RGB -flatten -density 300 -quality 100' }, 
                    :path => ":page_path/:class/:id/:resource_token/:style/:filename"

    validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf)}

  def get_next
    self.class.where("date(created_at) < ?", created_at).order(created_at: :desc).first
  end

  def get_prev
    self.class.where("date(created_at) > ?", created_at).order(created_at: :desc).last
  end

  def get_first
    self.class.order(created_at: :desc).first
  end

  def get_last
    self.class.order(created_at: :desc).last
  end



  
end
