ActiveAdmin.register Student do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :avatar, :user_id, :batch_id, :title, :bio
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	form :html => { :enctype => "multipart/form-data"} do |f|

		f.inputs "Student Details" do	
	    	f.input :user_id, :required => true, as: :select, collection: User.all.order(name: :asc).uniq
			f.input :batch_id, :required => true, as: :select, collection: Batch.all.uniq
	    	f.input :avatar, :required => true, :as => :file
	    	f.input :title, label: "Title"
	    	f.input :bio, :required => true, label: "Bio"
		end		
		f.actions
		# for custom actions
		# f.actions do 
	 #       f.action :submit, :as => :button ,:label => 'Create Item'
	 #       f.action :cancel, :as => :link, :label => 'Cancel',:wrapper_html => { :class=>"cancel" }
	 #    end 
	end

	index :title => "Students" do
		column :id
		column :batch do |student|
			student.batch.year
		end
       	column :user do |student|
       		# student.user.name
       		link_to student.user.name, admin_user_path(student.user)
       	end
	    column :avatar do |student|
	    	if student.avatar.file?
	    		a :class => "admin_image_popup", :href => student.avatar.url(:large) do
					image_tag(student.avatar.url(:thumb))
	        	end	
	        end     
	    end   
	    column "Title", :bio do |student|
                student.title == nil ? "" : "#{student.title}"

        end 

		column "Bio", :bio do |student|
                student.bio == nil ? "" : "#{student.bio[0..200]} #{student.bio.length > 200 ? "..." : ""}"

        end 
	  actions
	end

	show :title => "" do |student|
		panel 'Student Details' do
			attributes_table_for student  do
				row :id
				row :batch do
					student.batch.year
				end
				row :user do
					link_to student.user.name, admin_user_path(student.user)
				end
				row :avatar do
					if student.avatar.file?
			    		a :class => "admin_image_popup", :href => student.avatar.url(:large) do
							image_tag(student.avatar.url(:thumb))
			        	end	
			        end  
				end
				row :title
				row :bio
				row :created_at
			end
		end	
	  
	end

	controller do
		defaults :finder => :find_by_slug
	end

end
