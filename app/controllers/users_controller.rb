class UsersController < ApplicationController
  def show
    @user =  User.find_by_id(params[:id]) 
  end

  def edit
  	@user = User.find_by_id(params[:id])
  end

  def update
  	@user = User.find_by_id(params[:id])
  	@user.update_attributes(user_params)
  	render 'show'
  end

  private
  
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :birthday, :address, :avatar)
  end
end
