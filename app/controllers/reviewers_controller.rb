class ReviewersController < ApplicationController


  def index
    @reviewers = Reviewer.all
    render :index
  end

  def create
    @reviewer = Reviewer.create(
      source: params[:source],
      uid: params[:uid],
      email: params[:email],
      name: params[:name],
    )
    render :show
  end

  def show
    @reviewer = Reviewer.find_by(id: params[:id])
    render :show
  end
end
