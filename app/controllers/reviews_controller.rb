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

  def update
    @review = Review.find_by(id: params[:id])
    @review.update(
      reviewer_id: params[:reviewer_id] || @review.reviewer_id,
      rating: params[:rating] || @review.rating,
      comment: params[:comment] || @review.comment,
    )
    render :show
  end
end
