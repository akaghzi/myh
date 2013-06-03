class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all.order("last_name,first_name")
  end
  def show
    
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to patients_path, notice: 'User was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to patients_path, notice: 'User was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # def destroy
  #   @user.destroy
  #   respond_to do |format|
  #     format.html { redirect_to users_url }
  #   end
  # end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password, 
                                 :password_confirmation, :user_type, :session_cookie)
  end
end
