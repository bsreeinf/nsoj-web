ActiveAdmin.register Story do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :student_id, :title, :content, :story_category_id, :blog_image, :image_caption, :created_at, :slug
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	form :html => { :enctype => "multipart/form-data"} do |f|

		f.inputs "New Story" do	
	    	f.input :student_id, :required => true, as: :select, collection: Student.all.uniq
	    	f.input :story_category_id, :required => true, as: :select, collection: StoryCategory.all.uniq
			f.input :title, :required => true
	    	f.input :content, :required => true
	    	f.input :blog_image, :required => true, :as => :file
	    	f.input :created_at, :as => :datepicker
	    	f.input :image_caption
	    	f.input :slug, :required => false

		end		
		f.actions
		# for custom actions
		# f.actions do 
	 #       f.action :submit, :as => :button ,:label => 'Create Item'
	 #       f.action :cancel, :as => :link, :label => 'Cancel',:wrapper_html => { :class=>"cancel" }
	 #    end 
	end

	index :title => "Stories" do
		column :id
       	column :student do |story|
       		link_to story.student.user.name, admin_student_path(story.student)
       	end 
       	column :title
       	column :slug
       	column :last_accessed_at
       	column :access_counter
       	column :created_at
	  actions
	end

	show :title => "" do |story|
		panel 'Image Details' do
			attributes_table_for story  do
				row :story_category do
					story.story_category.title
				end
				row :user do
					link_to story.student.user.name, student_path(story.student)
				end
				row :title
				row :blog_image do
				  if story.blog_image.file?
				  	image_tag(story.blog_image.url(:thumb))
				  end
				end
				row :image_caption
				row :content
				row :created_at
				row :slug
				row :last_accessed_at
				row :access_counter
				
			end
		end	
	  
	 end

	controller do
		defaults :finder => :find_by_slug
		def create
			super do |format|
        		redirect_to new_admin_story_path and return if resource.valid?
      		end
		end

		def update
			super do |format|
				redirect_to admin_stories_path and return if resource.valid?
			end
		end
	end

end
