class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_review, only: [:show]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new review_params
    if @review.save!
      flash[:success] = t "Success Created"
      redirect_to review_path(@review)
    else
      flash[:danger] = t "Something Wrong"
      redirect_to :back
    end
  end

  def edit

  end

  def update

  end

  def show
  end

  private
    def review_params
      params.require(:review).permit :title, :store, :price, :content, :image, :user_id
    end

  def find_review
    @cur_review = Review.find_by id: params[:id]
  end
end
