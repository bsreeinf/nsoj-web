class NsojPost < ActiveRecord::Base
	has_attached_file :document	
    validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}

      after_document_post_process :make_pages

	  private

	  def make_pages

	  	# Paperclip.run('convert', "-size 100 #{document.queued_for_write[:original].path} #{document.queued_for_write[:original].path}%d.png")



	  end

  
end
