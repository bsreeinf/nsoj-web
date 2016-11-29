ActiveAdmin.register NsojTv do
	menu priority: 6, label: "Videos", parent: "NSoJ TV"
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :link ,:nsoj_tv_category_id, video_authors_attributes: [:id, :student_id, :nsoj_tv_id]
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

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

 #  1 |                 3
 #  3 |                 4
 #  4 |                 4
 #  5 |                 5
 #  6 |                 3
 #  7 |                 3
 #  8 |                 5
 #  9 |                 3
 # 10 |                 3
 # 11 |                 3
 # 12 |                 5
 # 13 |                 5
 # 14 |                 3
 # 15 |                 3
 # 16 |                 5
 # 17 |                 5
 # 18 |                 4
 # 19 |                 5
 # 20 |                 3
 # 21 |                 5
 # 22 |                 5
 # 23 |                 5
 # 24 |                 3
 # 25 |                 3
 # 26 |                 3
 # 27 |                 5
 # 28 |                 4
 # 29 |                 3
 # 30 |                 3
 # 31 |                 5
 # 32 |                 5
 # 33 |                 5
 # 34 |                 6
 # 35 |                 3
 # 36 |                 3
 # 37 |                 3
 # 38 |                 5
 # 42 |                 5
 # 43 |                 3
 # 44 |                 3
 # 45 |                 2
 # 46 |                 2
 # 47 |                 5
 # 48 |                 5
 # 49 |                 5
 # 50 |                 3
 # 51 |                 8
 # 52 |                 3
 # 53 |                 6
 # 54 |                 3
 # 55 |                 5
 # 56 |                 2
 # 57 |                 5
 # 58 |                 3
 # 59 |                 5
 # 60 |                 3