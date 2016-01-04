class NsojTvsController < ApplicationController
  before_action :set_nsoj_tv, only: [:show, :edit, :update, :destroy]

  # GET /nsoj_tvs
  # GET /nsoj_tvs.json
  def index
    @nsoj_tvs = NsojTv.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nsoj_tvs }
    end
  end

  # GET /nsoj_tvs/1
  # GET /nsoj_tvs/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nsoj_tv }
    end
  end

  # GET /nsoj_tvs/new
  def new
    @nsoj_tv = NsojTv.new
  end

  # GET /nsoj_tvs/1/edit
  def edit
  end

  # POST /nsoj_tvs
  # POST /nsoj_tvs.json
  def create
    @nsoj_tv = NsojTv.new(nsoj_tv_params)

    respond_to do |format|
      if @nsoj_tv.save
        format.html { redirect_to @nsoj_tv, notice: 'Nsoj tv was successfully created.' }
        format.json { render json: @nsoj_tv, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @nsoj_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nsoj_tvs/1
  # PATCH/PUT /nsoj_tvs/1.json
  def update
    respond_to do |format|
      if @nsoj_tv.update(nsoj_tv_params)
        format.html { redirect_to @nsoj_tv, notice: 'Nsoj tv was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nsoj_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nsoj_tvs/1
  # DELETE /nsoj_tvs/1.json
  def destroy
    @nsoj_tv.destroy
    respond_to do |format|
      format.html { redirect_to nsoj_tvs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nsoj_tv
      @nsoj_tv = NsojTv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nsoj_tv_params
      params.require(:nsoj_tv).permit(:title, :link, :nsoj_tv_category_id)
    end
end
