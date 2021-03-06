class LandingPageController < ApplicationController
  def home
    # @students = Student.order('id asc, bio IS NULL, bio DESC').limit(6)
    ids = [2, 1, 11, 23, 15, 3]
    @students = Student.where(id: ids).sort_by {|p| ids.index(p.id) }

    @num_stories = Story.count
    @popular_stories = Story.all.order(access_counter: :desc, last_accessed_at: :desc, created_at: :desc).limit(20)
    # @latest_stories = Story.all.order(created_at: :desc).limit(10)

    @contact = Contact.new()
    @contact_subject = ContactSubject.all

    @homepage_main_video = HomeConfig.where(tag_ref: 'HOME_MAIN_VIDEO').first.tag_value
  end

  def why_us
  end

  def download_student_brochure
    send_data "#{Rails.root}/public/summer_program.pdf",
    # send_data "#{asset_path('summer_program.pdf')}",
    :filename => "NSoJ_Student_Brochure_2016.pdf",
    :type => "application/pdf"
  end

  def program
  end

  def placements
  end

  def faculty
  end

  def admission
    @admission_contact = AdmissionContact.new()
  end

  def digitaljournalism
    @admission_contact = AdmissionContact.new()
  end

  def nsoj_radio
    
  end

  def nsoj_tv
    @story_categories = StoryCategory.all
    @categoryMode = false
    @hide_main_nav = true
  end
  
  def privacy_policy
    
  end
  
  def advisory_board
    
  end

  def nsoj_events
    
  end

  def nsoj_post
    @story_categories = StoryCategory.all
    @categoryMode = false
    @hide_main_nav = true

    @current_post = nil
    if params.has_key?(:pc) 
      @current_post = NsojPost.where(id: params[:pc]).first
    end
  end

  def brochure

  end
  
end
