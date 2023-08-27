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

  def update
    @reviewer = Reviewer.find_by(id: params[:id])
    @reviewer.update(
      source: params[:source] || @reviewer.source,
      uid: params[:uid] || @reviewer.uid,
      email: params[:email] || @reviewer.email,
      name: params[:name] || @reviewer.name,
    )
    render :show
  end
end
