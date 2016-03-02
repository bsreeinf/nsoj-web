class NsojPostsController < ApplicationController
  before_action :set_nsoj_post, only: [:show, :edit, :update, :destroy]

  # GET /nsoj_posts
  # GET /nsoj_posts.json
  def index
    @nsoj_posts = NsojPost.all.order("created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nsoj_posts }
    end
  end

  # GET /nsoj_posts/1
  # GET /nsoj_posts/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nsoj_post }
    end
  end

  # GET /nsoj_posts/new
  def new
    @nsoj_post = NsojPost.new
  end

  # GET /nsoj_posts/1/edit
  def edit
  end

  # POST /nsoj_posts
  # POST /nsoj_posts.json
  def create
    @nsoj_post = NsojPost.new(nsoj_post_params)

    respond_to do |format|
      if @nsoj_post.save
        format.html { redirect_to @nsoj_post, notice: 'Nsoj post was successfully created.' }
        format.json { render json: @nsoj_post, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @nsoj_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nsoj_posts/1
  # PATCH/PUT /nsoj_posts/1.json
  def update
    respond_to do |format|
      if @nsoj_post.update(nsoj_post_params)
        format.html { redirect_to @nsoj_post, notice: 'Nsoj post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nsoj_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nsoj_posts/1
  # DELETE /nsoj_posts/1.json
  def destroy
    @nsoj_post.destroy
    respond_to do |format|
      format.html { redirect_to nsoj_posts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nsoj_post
      @nsoj_post = NsojPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nsoj_post_params
      params.require(:nsoj_post).permit(:link,:document)
    end
end
