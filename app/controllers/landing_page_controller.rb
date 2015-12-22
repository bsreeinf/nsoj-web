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

  def gallery
  end
  
end
