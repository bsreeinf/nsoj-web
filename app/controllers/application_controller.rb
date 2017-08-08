class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper


  private
    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    # Check if the current slug is not the cannonical one.
    def bad_slug?(object)
      params[:id] != object.to_param
    end

    ##
    # 301 redirect to canonical slug.
    def redirect_to_good_slug(object)
        redirect_to params.merge({
                      :controller => controller_name,
                      :action => params[:action],
                      :id => object.to_param,
                      :status => :moved_permanently
                    })
    end

    # def redirect_back_to_current_page
    #   redirect_to :back
    # end
end