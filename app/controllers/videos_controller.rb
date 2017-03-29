class VideosController < ApplicationController
  before_action :set_nsoj_tv, only: [:show, :edit, :update, :destroy]

  

  # GET /nsoj_tvs
  # GET /nsoj_tvs.json
  def index
    @story_categories = StoryCategory.all
    @video_categories = NsojTvCategory.all.order("created_at DESC")
    @categoryMode = false
    @hide_main_nav = true

    @forward_link = ""
    @selected_video = nil
    @category = nil
    @videos = nil

    if params.has_key?(:vc)
      @category = NsojTvCategory.where("lower(title) = ?", params[:vc]).first
      if !@category.nil?
        @forward_link = "vc=#{params[:vc]}&"
        @videos = NsojTv.where(nsoj_tv_category_id: @category.id).order("created_at DESC")
      end
    end

    if params.has_key?(:v)
      @selected_video = NsojTv.where("link ilike '%#{params[:v]}%'").first
      puts("Selected video '#{@selected_video.title}'")
    end

    if @videos.nil?
      @videos = NsojTv.order("created_at DESC")
    end

    if @selected_video.nil?
      @selected_video = @videos.first
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
