class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render :index
  end

  def create
    @review = Review.create(review_params)
    render :show
  end

  def show
    @review = Review.find_by(id: params[:id])
    render :show
  end

  def update
    @review = Review.find_by(id: params[:id])
    @review.update(review_params)
    render :show
  end

  def destroy
    @review = Review.find_by(id: params[:id])
    @review.destroy
    render json: { message: "review destroyed successfully" }
  end

  private

  def review_params
    params.permit(:reviewer_id, :rating, :comment)
  end
end
