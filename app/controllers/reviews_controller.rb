class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_review, only: [:show, :destroy]

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

  def destroy
    @cur_review.delete
    redirect_to admin_path
  end

  private
    def review_params
      params.require(:review).permit :title, :store, :price_from, :price_upto,
        :content, :image, :user_id, :quality, :place, :price, :service, :currency, :aji_id
    end

  def find_review
    @cur_review = Review.find_by id: params[:id]
  end
end
