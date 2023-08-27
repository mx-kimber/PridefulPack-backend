class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render :index
  end

  def create
    @review = Review.create(
      reviewer_id: params[:reviewer_id],
      rating: params[:rating],
      comment: params[:comment],
    )
    render :show
  end

  def show
    @review = Review.find_by(id: params[:id])
    render :show
  end
end
