class LandingPageController < ApplicationController
  def home
    @contact = Contact.new()
    @contact_subject = ContactSubject.all
  end

  def why_us
  end

  def program
  end

  def admission
    @admission_contact = AdmissionContact.new()
  end

  def nsoj_news_page
    
  end

  def nsoj_radio
    
  end

  def nsoj_tv
    
  end

  def nsoj_events
    
  end

  def nsoj_post
    
  end
  
end
