ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name, :email,:phone, :password, :password_confirmation, :address, :city, :pincode, :state, :country, :activated
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone
    column :city
    column :activated
    column :activated_at
    column :reset_sent_at
    column :created_at
    column :updated_at
    column :address
    column :pincode
    column :state
    column :country
    actions
  end

  show do    
	attributes_table  do
	    row :id
	    row :name
	    row :email
	    row :phone
	    row :address
	    row :city
	    row :pincode
	    row :state
	    row :country
	    row :activated
	    row :activated_at
	    row :reset_sent_at
	    row :created_at
	    row :updated_at
    end	   
  end

  form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :password
      f.input :password_confirmation
      f.input :email
      f.input :address
      f.input :city
      f.input :pincode
      f.input :state
      f.input :country
      f.input :activated

    end
    f.actions
  end


end
