ActiveAdmin.register Story do
menu priority: 7, label: "Stories", parent: "NSoJ Stories"
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :content, :summary, :story_category_id, :blog_image, :image_caption, :created_at, :slug, :video_link, :video_caption, 
	authors_attributes: [:id, :author_type_id, :student_id, :story_id],
	categories_attributes: [:id, :story_category_id, :story_id]
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	
	form :html => { :enctype => "multipart/form-data"} do |f|

		f.inputs "Story" do	
			f.input :title, :required => true
			f.input :summary, :required => true
	    	f.input :content, :required => true
	    	f.input :blog_image, :required => true, :as => :file
	    	f.input :image_caption
	    	f.input :video_link
	    	f.input :video_caption
	    	f.input :created_at, :as => :datepicker
	    	
	    	f.input :slug, :required => false

		end		
		
		panel '' do
			f.has_many :categories do |categories_f|
				if !categories_f.object.nil?
					categories_f.input :_destroy, :as => :boolean, :label => "Delete?"
	  			end
	  			categories_f.input :story_id, :input_html => { :value => f.object.id }, as: :hidden
	  			categories_f.input :story_category_id, :required => true, as: :select, collection: StoryCategory.all.uniq
	    		
	    		categories_f.actions
			end
		end
		
		panel '' do
			f.has_many :authors do |authors_f|
				if !authors_f.object.nil?
					authors_f.input :_destroy, :as => :boolean, :label => "Delete?"
	  			end
	  			authors_f.input :story_id, :input_html => { :value => f.object.id }, as: :hidden
	  			authors_f.input :student_id, :required => true, as: :select, collection: Student.all.uniq
	  			authors_f.input :author_type_id, :required => true, as: :select, collection: AuthorType.all.uniq

	    		authors_f.actions
			end
		end

		f.actions 
	end

	index :title => "Stories" do
		column :id
       	# column :student do |story|
       	# 	link_to story.student.user.name, admin_student_path(story.student)
       	# end 
       	column :title
       	column :summary
       	column :slug
       	column :last_accessed_at
       	column :access_counter
       	column :created_at
	  actions
	end

	show :title => "" do |story|
		panel 'Story' do
			attributes_table_for story  do
				row :story_categories do 
					@story_category = ""
					story.story_categories.each_with_index do |story_category, i|
                        @story_category += (i > 0 ? " , " : "") + story_category.title
                    end
                    @story_category.html_safe
				end
				

				# row :user do
				# 	link_to story.student.user.name, student_path(story.student)
				# end
				row :title
				row :summary
				row :blog_image do
				  if story.blog_image.file?
				  	image_tag(story.blog_image.url(:thumb))
				  end
				end
				row :image_caption
				row :video_link
				row :video_caption
				row :content
				row :created_at
				row :slug
				row :last_accessed_at
				row :access_counter
				
			end
		end	

		panel "Students" do
			table_for story.authors do
				column "name" do |author|
					author.student.user.name
				end
			end
		end
	  
	end

	controller do
		defaults :finder => :find_by_slug
		# def create
		# 	super do |format|
  #       		redirect_to new_admin_story_path and return if resource.valid?
  #     		end
		# end
		def scoped_collection
			Story.includes(:students)
		end

		def update
			super do |format|
				redirect_to admin_stories_path and return if resource.valid?
			end
		end
	end

end
