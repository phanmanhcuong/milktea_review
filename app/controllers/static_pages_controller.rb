class StaticPagesController < ApplicationController
  def show
    @reviews = Review.all
  end
end
