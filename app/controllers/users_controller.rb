class UsersController < ApplicationController
  def show
    @user =  User.find_by_id(params[:id]) 
  end

  def destroy
    user = User.find_by_id(params[:id])
    user.review.each do |rv|
      rv.delete
    end
    user.delete
    redirect_to admin_path(current_user)
  end
end
