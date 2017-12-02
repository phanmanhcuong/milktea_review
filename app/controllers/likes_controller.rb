class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    unless find_like
      like = Like.new
      like.update_attributes like_params
    end
  end

  def destroy
    get_like.destroy
  end

  private
  def like_params
    params.require(:like).permit :review_id, :user_id
  end

  def find_like
    User.find_by_id(current_user.id).like.where(review_id: like_params[:review_id]).present?
  end

  def get_like
    Like.find_by(user_id: current_user.id, review_id: params[:id])
  end
end
