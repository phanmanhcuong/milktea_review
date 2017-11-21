class CommentsController < ApplicationController
  def create
    comment = Comment.new
    comment.update_attributes comment_params
  end

  def update

  end

  def destroy

  end

  private
  def comment_params
    params.require(:comment).permit :review_id, :user_id, :content
  end
end
