class ReviewersController < ApplicationController
  def index
    @reviewers = Reviewer.all
    render :index
  end

  def create
    @reviewer = Reviewer.create(reviewer_params)
    render :show
  end

  def show
    @reviewer = Reviewer.find_by(id: params[:id])
    render :show
  end

  def update
    @reviewer = Reviewer.find_by(id: params[:id])
    @reviewer.update(reviewer_params)
    render :show
  end

  def destroy
    @reviewer = Reviewer.find_by(id: params[:id])
    @reviewer.destroy
    render json: { message: "reviewer destroyed successfully" }
  end

  private

  def reviewer_params
    params.permit(:source, :uid, :email, :name)
  end
end
