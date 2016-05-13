ActiveAdmin.register AdmissionForm do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :user_id, 
        :last_name1, :first_name1, :middle_name1, :name_title1, 
        :last_name2, :first_name2, :middle_name2, :name_title2, 
        :dob, :country_of_permanent_residence, :country_of_birth, :nationality, :second_nationality, 
        :addr_street1, :addr_city1, :addr_state1, :addr_pincode1, :addr_country1, :phone1, :addr_until, 
        :addr_street2, :addr_city2, :addr_state2, :addr_pincode2, :addr_country2, :phone2, :addr_since, 
        :email, 
        :s_university, :s_subject, :s_degree, :s_date_started, :s_date_to_be_obtained, :s_expected_gpa, 
        :r_university, :r_subject, :r_degree, :r_date_to_be_obtained, :r_expected_gpa, 
        :a_degree1, :a_program1, :a_institution1, :a_department1, :a_country1, 
        :a_degree2, :a_program2, :a_institution2, :a_department2, :a_country2, 
        :a_degree3, :a_program3, :a_institution3, :a_department3, :a_country3, 
        :a_degree4, :a_program4, :a_institution4, :a_department4, :a_country4, 
        :a_degree5, :a_program5, :a_institution5, :a_department5, :a_country5, 
        :eh_from_date1, :eh_to_date1, :eh_post_held1, :eh_employer_details1, 
        :eh_from_date2, :eh_to_date2, :eh_post_held2, :eh_employer_details2, 
        :eh_from_date3, :eh_to_date3, :eh_post_held3, :eh_employer_details3, 
        :assessment_interested, :assessment_experience, :gender, :visa_required, :program_of_study, :currently_studying,:is_submitted
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
index :tag => "Admission Forms" do
        actions
        column :user_id
        column :is_submitted
        column :email
        column :last_name1
        column :first_name1 
        column :middle_name1 
        column :name_title1 
        column :last_name2 
        column :first_name2 
        column :middle_name2 
        column :name_title2 
        column :dob 
        column :country_of_permanent_residence 
        column :country_of_birth 
        column :nationality 
        column :second_nationality 
        column :addr_street1 
        column :addr_city1 
        column :addr_state1 
        column :addr_pincode1 
        column :addr_country1 
        column :phone1 
        column :addr_until 
        column :addr_street2 
        column :addr_city2 
        column :addr_state2 
        column :addr_pincode2 
        column :addr_country2 
        column :phone2 
        column :addr_since  
        column :s_university 
        column :s_subject 
        column :s_degree 
        column :s_date_started 
        column :s_date_to_be_obtained 
        column :s_expected_gpa 
        column :r_university 
        column :r_subject 
        column :r_degree 
        column :r_date_to_be_obtained 
        column :r_expected_gpa 
        column :a_degree1 
        column :a_program1 
        column :a_institution1 
        column :a_department1 
        column :a_country1 
        column :a_degree2 
        column :a_program2 
        column :a_institution2 
        column :a_department2 
        column :a_country2 
        column :a_degree3 
        column :a_program3 
        column :a_institution3 
        column :a_department3 
        column :a_country3 
        column :a_degree4 
        column :a_program4 
        column :a_institution4 
        column :a_department4 
        column :a_country4 
        column :a_degree5 
        column :a_program5 
        column :a_institution5 
        column :a_department5 
        column :a_country5 
        column :eh_from_date1 
        column :eh_to_date1 
        column :eh_post_held1 
        column :eh_employer_details1 
        column :eh_from_date2 
        column :eh_to_date2 
        column :eh_post_held2 
        column :eh_employer_details2 
        column :eh_from_date3 
        column :eh_to_date3 
        column :eh_post_held3 
        column :eh_employer_details3 
        column "Assessment - Experience", :assessment_interested do |txtEssay1|
                txtEssay1.assessment_interested == nil ? "" : txtEssay1.assessment_interested[0..50]
        end
        column "Assessment - Interested", :assessment_experience do |txtEssay1|
                txtEssay1.assessment_experience == nil ? "" : txtEssay1.assessment_experience[0..50]
        end
        column :gender 
        column :visa_required 
        column :program_of_study 
        column :currently_studying
        
end

end
