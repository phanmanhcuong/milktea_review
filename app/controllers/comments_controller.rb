class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    comment = Comment.new
    comment.update_attributes comment_params
  end

  def update
    comment = find_comment
    comment.update_attributes comment_params
  end

  def destroy
    comment = find_comment
    comment.destroy
  end

  private
  def comment_params
    params.require(:comment).permit :review_id, :user_id, :content
  end

  def find_comment
    Comment.find_by_id(params[:id])
  end
end
