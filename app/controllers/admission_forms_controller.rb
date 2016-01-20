class AdmissionFormsController < ApplicationController
  before_action :logged_in_user
  before_action :set_admission_form

  # GET /admission_forms/1
  # GET /admission_forms/1.json
  def show
  end

  # GET /admission_forms/1/edit
  def edit

  end

  private

    def set_admission_form
      if AdmissionForm.exists?(user_id: current_user.id)
        @admission_form = AdmissionForm.where(user_id: current_user.id)
      else
        @admission_form = AdmissionForm.new
      end
    end

    def admission_form_params
      params[:admission_form]
    end
end
