class AdmissionFormsController < ApplicationController
  before_action :logged_in_user, except: [:download_form, :show]
  before_action :set_admission_form, except: [:download_form, :show]

  # GET /admission_forms/1
  # GET /admission_forms/1.json
  def show
    if(params.has_key?(:user_id))
      @frm = AdmissionForm.all.where(user_id: params[:user_id]).first
      # respond_to do |format|
      #   format.pdf do
      #     pdf = WickedPdf.new.pdf_from_string(
      #       render_to_string(template: "admission_forms/show.html.erb"),
      #       :footer => {right: "Powered by www.nsoj.in"}
      #     ) 
      #     send_data(pdf, 
      #       :filename    => "AF_#{@frm.firstname1.gsub(/\s+/, "")}_#{@frm.form_token}.pdf", 
      #       :disposition => 'attachment'
      #     )

      #     # render  pdf: "report_#{@verification_stub.name.gsub(/\s+/, "")}_#{@verification_stub.hallticket_no}", 
      #     #         template: "college_verification/report.html.erb"
      #   end
      # end
    end
  end

  # GET /admission_forms/1/edit
  def edit

  end

  def edit_pgddj

  end

  # POST
  def update
    if AdmissionForm.exists?(user_id: current_user.id)
      @form_id = AdmissionForm.all.where(user_id: current_user.id).first.id

      @form_data = AdmissionForm.update(@form_id, admission_form_params)
      
      if params[:commit] == 'Save'
        @form_data.is_submitted = false
        @form_data.save

      else
        @form_data.is_submitted = true
        if @form_data.save
          if @form_data.program_of_study == 'digital_journalism'
            @notif_to_emails = Figaro.env.em_admission_cc_group
          else  
            @notif_to_emails = Figaro.env.em_admission_dj_cc_group
          end
          ApplicationFormMailer.application_form_created(@form_data.first_name1,@form_data.last_name1,@form_data.email,@form_data.form_token).deliver_now
          ApplicationFormMailer.application_form_notification_created( @form_data.first_name1, @form_data.last_name1, @form_data.email, @form_data.form_token, ).deliver_now
        end

      end

      redirect_to controller: 'admission_forms', action: 'edit', user_id: current_user.id
    else
      AdmissionForm.new(admission_form_params).save

      redirect_to controller: 'admission_forms', action: 'edit'
    end
  end

  private

    def set_admission_form
      if AdmissionForm.exists?(user_id: current_user.id)
        @admission_form = AdmissionForm.all.where(user_id: current_user.id).first
      else
        @admission_form = AdmissionForm.new
      end
    end

    def admission_form_params
      params[:admission_form].permit(
        :user_id, 
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
        :assessment_interested, :assessment_experience, :gender, :visa_required, :program_of_study, :currently_studying,:is_submitted,
        :ec_father_name, :ec_father_phone, :ec_mother_name, :ec_mother_phone, :ec_guardian_name, :ec_guardian_phone,
        :sp_name1, :sp_reason1, :sp_date1, :sp_value1,
        :sp_name2, :sp_reason2, :sp_date2, :sp_value2,
        :sp_name3, :sp_reason3, :sp_date3, :sp_value3

        )

    end
end
