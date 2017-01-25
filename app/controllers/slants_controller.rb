class SlantsController < ApplicationController
  before_action :set_slant, only: [:show, :edit, :update, :destroy]

  # GET /slants
  # GET /slants.json
  def index
    @slants = Slant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @slants }
    end
  end

  # GET /slants/1
  # GET /slants/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @slant }
    end
  end

  # GET /slants/new
  def new
    @slant = Slant.new
  end

  # GET /slants/1/edit
  def edit
  end

  # POST /slants
  # POST /slants.json
  def create
    @slant = Slant.new(slant_params)

    respond_to do |format|
      if @slant.save
        format.html {  
         SlantFormMailer.slant_form_created(@slant.college_name,@slant.phone,@student_coordinator_name,@slant.rb_name1,@slant.rb_phone1,@slant.rb_name2,@slant.rb_phone2,@slant.rb_name3,@slant.rb_phone3,@slant.rb_name4,@slant.rb_phone4,@slant.rb_name5,@slant.rb_phone5,@slant.rb_name6,@slant.rb_phone6,@slant.bn_name1,@slant.bn_phone1,@slant.bn_name2,@slant.bn_phone2,@slant.bn_name3,@slant.bn_phone3,@slant.bn_name4,@slant.bn_phone4,@slant.fc_name1,@slant.fc_phone1,@slant.fc_name2,@slant.fc_phone2,@slant.fc_name3,@slant.fc_phone3,@slant.tt_name1,@slant.tt_phone1,@slant.tt_name2,@slant.tt_phone2,@slant.tt_name3,@slant.tt_phone3,@slant.es_name,@slant.es_phone,@slant.pj_name,@slant.pj_phone,@slant.do_name,@slant.do_phone).deliver_now

        redirect_to root_url, notice: "form successfully submitted"

      }
      else
        format.html { render action: 'new' }
        format.json { render json: @slant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slants/1
  # PATCH/PUT /slants/1.json
  def update
    respond_to do |format|
      if @slant.update(slant_params)
        format.html { redirect_to @slant, notice: 'Successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @slant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slants/1
  # DELETE /slants/1.json
  def destroy
    @slant.destroy
    respond_to do |format|
      format.html { redirect_to slants_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slant
      @slant = Slant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slant_params
      params[:slant].permit(
        :college_name,
        :student_coordinator_name,
        :phone,
        :rb_name1,
        :rb_phone1,
        :rb_name2,
        :rb_phone2,
        :rb_name3,
        :rb_phone3,
        :rb_name4,
        :rb_phone4,
        :rb_name5,
        :rb_phone5,
        :rb_name6,
        :rb_phone6,
        :bn_name1,
        :bn_phone1,
        :bn_name2,
        :bn_phone2,
        :bn_name3,
        :bn_phone3,
        :bn_name4,
        :bn_phone4,
        :fc_name1,
        :fc_phone1,
        :fc_name2,
        :fc_phone2,
        :fc_name3,
        :fc_phone3,
        :tt_name1,
        :tt_phone1,
        :tt_phone2,
        :tt_phone3,
        :es_name,
        :es_phone,
        :pj_name,
        :pj_phone,
        :do_name,
        :do_phone
      )
    end
end
