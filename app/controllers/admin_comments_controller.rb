class AdminCommentsController < ApplicationController

  def index
    @admin_comments = AdminComment.all
    render :index
  end
end
