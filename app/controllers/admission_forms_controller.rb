class AdmissionFormsController < ApplicationController
  # before_action :set_admission_form, only: [:show, :edit, :update, :destroy]



  # GET /admission_forms/1
  # GET /admission_forms/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admission_form }
    end
  end

 

  # GET /admission_forms/1/edit
  def edit
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admission_form
      @admission_form = AdmissionForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admission_form_params
      params[:admission_form]
    end
end
