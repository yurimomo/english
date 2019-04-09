class UsersController < ApplicationController
  def index
  	@users = User.all.order(id: "desc")
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		 redirect_to dictionaries_url, notice: "#{@user.name} is registerd"
  		else
  			render :new
  		end
  	end

  def show
  	@user = User.find_by(id: params[:id])
  end

  def update
  	@user = User.find_by(id: params[:id])
  	@user.update
  	redirect_to users_show
  end

  def destroy
  	@user = User.find_by(user_params)
  	@user.dstroy
  	redirect_to login_path
  end


 private

  def user_params
  	 params.require(:user).permit(:name, :email,:password,:password_confirmation)
  end
end
