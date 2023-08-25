class ReviewersController < ApplicationController


  def index
    @reviewers = Reviewer.all
    render :index
  end
end
