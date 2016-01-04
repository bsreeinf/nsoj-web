class BlogsController < InheritedResources::Base
 def index
 	@nsojradios=NsojRadio.order("created_at DESC").limit(3)
 	@nsojtvs=NsojTv.order("created_at DESC").limit(3)
 end
  private

    def blog_params
      params.require(:blog).permit()
    end
end

