class NsojRadiosController < ApplicationController
  before_action :set_nsoj_radio, only: [:show, :edit, :update, :destroy]

  # GET /nsoj_radios
  # GET /nsoj_radios.json
  def index
    @nsoj_radios = NsojRadio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nsoj_radios }
    end
  end

  # GET /nsoj_radios/1
  # GET /nsoj_radios/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nsoj_radio }
    end
  end

  # GET /nsoj_radios/new
  def new
    @nsoj_radio = NsojRadio.new
  end

  # GET /nsoj_radios/1/edit
  def edit
  end

  # POST /nsoj_radios
  # POST /nsoj_radios.json
  def create
    @nsoj_radio = NsojRadio.new(nsoj_radio_params)

    respond_to do |format|
      if @nsoj_radio.save
        format.html { redirect_to @nsoj_radio, notice: 'Nsoj radio was successfully created.' }
        format.json { render json: @nsoj_radio, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @nsoj_radio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nsoj_radios/1
  # PATCH/PUT /nsoj_radios/1.json
  def update
    respond_to do |format|
      if @nsoj_radio.update(nsoj_radio_params)
        format.html { redirect_to @nsoj_radio, notice: 'Nsoj radio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nsoj_radio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nsoj_radios/1
  # DELETE /nsoj_radios/1.json
  def destroy
    @nsoj_radio.destroy
    respond_to do |format|
      format.html { redirect_to nsoj_radios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nsoj_radio
      @nsoj_radio = NsojRadio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nsoj_radio_params
      params.require(:nsoj_radio).permit(:title, :link)
    end
end
