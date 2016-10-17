class StudentPublicationController < ApplicationController
 	def index
	  	@nsojposts=NsojPost.order("created_at DESC").limit(4)
	  	@nsojradios=NsojRadio.order("created_at DESC").limit(4)
	 	@nsojtvs=NsojTv.order("created_at DESC").limit(4)
	 	# @nsojtvs_no_nuisance = NsojTv.order("created_at DESC").limit(3)
	 	@nsojtvs_bulleitin = NsojTv.order("created_at DESC").where('nsoj_tv_category_id = ?', 1).limit(4)
	 	@nsojtvs_featured= NsojTv.order("created_at DESC").where('nsoj_tv_category_id = ?', 2).limit(4)
	 	@nsojtvs_no_newsense= NsojTv.order("created_at DESC").where('nsoj_tv_category_id = ?', 3).limit(4)

	end

  	private

	    def blog_params
	      params.require(:blog).permit()
	    end
end
