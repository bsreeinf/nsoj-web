ActiveAdmin.register HomeConfig do
	menu priority: 10, label: "Homepage", parent: "Edit Static Content"
	actions :all, :except => [:destroy, :show]
	# config.batch_actions = false

	permit_params :tag_ref, :tag_value, :tag_value_type

	index do
		column :tag_ref
		column :tag_value
		actions
	end


	form do |f|
	    f.inputs "Subscription Plan" do
			f.input :tag_ref#, input_html: { disabled: true } 
			f.input :tag_value
			# unless f.object.new_record?
			#     f.input(:tag_value_type, :label => "Value Type")
			# end
	    end
	    f.actions
	end


end
