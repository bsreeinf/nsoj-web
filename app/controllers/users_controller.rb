class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]
  before_action :logged_in_user, only: [:edit, :update, :destroy ]
  before_action :correct_user,   only: [:edit, :update]

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)  
    if @user.save
      SignupMailer.signup_created(@user.name,@user.email,@user.phone,@user.city).deliver_now
      @user.send_activation_email
      flash[:info] = "Please check your email to activate your account."
      redirect_to login_url
    else
      render 'sessions/new'
    end

  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update   
    if @user.update(user_params)
      flash[:success] = "Profile updated"
      redirect_to  :action => 'edit'
    else
      render 'edit'
    end 
  
  end

  # DELETE /users/1
  # DELETE /users/1.json
  # def destroy
  #   @user.destroy
  #   respond_to do |format|
  #     format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email,:phone, :password, :password_confirmation, :address, :city, :pincode, :state, :country, :activated)
    end
    
    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

end
