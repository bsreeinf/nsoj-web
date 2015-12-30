ActiveAdmin.register Gallery do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

form :html => { :enctype => "multipart/form-data"} do |f|
	f.inputs "Image Uploads" do
		f.input :image_link, :as => :file, :hint => f.template.image_tag(f.object.photo.url(:medium))
	end
	f.buttons
end

index do
    # column :image_link
    column :image_link, :sortable => :image_link do |gallery|
      div :class => "image_link_class" do
         gallery.image_link
      end
    end
    
  actions
  end

end
