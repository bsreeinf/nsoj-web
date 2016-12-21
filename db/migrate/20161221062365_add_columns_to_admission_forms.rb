class AddColumnsToAdmissionForms < ActiveRecord::Migration
  def change
    add_column :admission_forms, :video_link, :string
    add_column :admission_forms, :ec_father_name, :string 
    add_column :admission_forms, :ec_father_phone, :string 
    add_column :admission_forms, :ec_mother_name, :string 
    add_column :admission_forms, :ec_mother_phone, :string 
    add_column :admission_forms, :ec_guardian_name, :string 
    add_column :admission_forms, :ec_guardian_phone, :string
        
    add_column :admission_forms, :sp_name1, :string 
    add_column :admission_forms, :sp_reason1, :string 
    add_column :admission_forms, :sp_date1, :date 
    add_column :admission_forms, :sp_value1, :string
        
    add_column :admission_forms, :sp_name2, :string 
    add_column :admission_forms, :sp_reason2, :string 
    add_column :admission_forms, :sp_date2, :date 
    add_column :admission_forms, :sp_value2, :string
        
    add_column :admission_forms, :sp_name3, :string 
    add_column :admission_forms, :sp_reason3, :string 
    add_column :admission_forms, :sp_date3, :date 
    add_column :admission_forms, :sp_value3, :string  
end
end
