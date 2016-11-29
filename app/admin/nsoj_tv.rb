ActiveAdmin.register NsojTv do
menu priority: 6, label: "Videos", parent: "NSoJ TV"

permit_params :title, :link ,:nsoj_tv_category_id, video_authors_attributes: [:id, :student_id, :nsoj_tv_id]


	form :html => { :enctype => "multipart/form-data"} do |f|

		f.inputs "NSoJ TV" do	
			f.input :title, :required => true
	    	f.input :link, :required => true
	    	f.input :nsoj_tv_category_id, :required => true, as: :select, collection: NsojTvCategory.all.order(title: :asc).uniq

		end		
		
		panel '' do
			f.has_many :video_authors do |video_authors_f|
				if !video_authors_f.object.nil?
					video_authors_f.input :_destroy, :as => :boolean, :label => "Delete?"
	  			end
	  			video_authors_f.input :nsoj_tv_id, :input_html => { :value => f.object.id }, as: :hidden
	  			video_authors_f.input :student_id, :required => true, as: :select, collection: Student.all.uniq

	    		video_authors_f.actions
			end
		end

		f.actions 
	end


	controller do

		def scoped_collection
			NsojTv.includes(:students)
		end

		def update
			super do |format|
				redirect_to admin_nsoj_tvs_path and return if resource.valid?
			end
		end
	end
end

 