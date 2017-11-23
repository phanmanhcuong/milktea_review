class StaticPagesController < ApplicationController
  def show
    @q = Review.ransack params[:q]
    # @q.sorts = %w(title created_at desc) if @q.sorts.empty?
    @reviews = @q.result.page(params[:page]).per 9

    if params[:menu]
      respond_to do |f|
        f.js{ render file: "static_pages/show.js.erb"}
      end
    end
  end
end
