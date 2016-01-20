class CreateAdmissionForms < ActiveRecord::Migration
  def change
    create_table :admission_forms do |t|
		t.references :user

		t.string :first_name1
		t.string :last_name1
		t.string :middle_name1
		t.string :name_title1
		t.string :first_name2
		t.string :last_name2
		t.string :middle_name2
		t.string :name_title2

		t.date :dob
		t.string :gender
		t.string :country_of_permanent_residence
		t.string :country_of_birth
		t.string :nationality
		t.string :second_nationality
		t.boolean :visa_required

		t.string :addr_street1
		t.string :addr_city1
		t.string :addr_state1
		t.string :addr_pincode1
		t.string :addr_country1
		t.string :phone1

		t.string :addr_street2
		t.string :addr_city2
		t.string :addr_state2
		t.string :addr_pincode2
		t.string :addr_country2
		t.string :phone2

		t.string :email
		t.date :addr_since
		t.date :addr_until

		t.string :program_of_study

		t.boolean :currently_studying
		t.string :s_university
		t.string :s_subject
		t.string :s_degree
		t.date :s_date_started
		t.date :s_date_to_be_obtained
		t.string :s_expected_gpa


		t.string :r_university
		t.string :r_subject
		t.string :r_degree
		t.date :r_date_to_be_obtained
		t.string :r_expected_gpa

		t.string :a_degree1
		t.string :a_program1
		t.string :a_institution1
		t.string :a_department1
		t.string :a_country1

		t.string :a_degree2
		t.string :a_program2
		t.string :a_institution2
		t.string :a_department2
		t.string :a_country2

		t.string :a_degree3
		t.string :a_program3
		t.string :a_institution3
		t.string :a_department3
		t.string :a_country3

		t.string :a_degree4
		t.string :a_program4
		t.string :a_institution4
		t.string :a_department4
		t.string :a_country4

		t.string :a_degree5
		t.string :a_program5
		t.string :a_institution5
		t.string :a_department5
		t.string :a_country5

		t.date :eh_from_date1
		t.date :eh_to_date1
		t.string :eh_post_held1
		t.string :eh_employer_details1

		t.date :eh_from_date2
		t.date :eh_to_date2
		t.string :eh_post_held2
		t.string :eh_employer_details2

		t.date :eh_from_date3
		t.date :eh_to_date3
		t.string :eh_post_held3
		t.string :eh_employer_details3

		t.string :assessment_interested
		t.string :assessment_experience


		t.timestamps null: false
    end
  end
end