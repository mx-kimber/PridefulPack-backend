class AdminCommentsController < ApplicationController

  def index
    @admin_comments = AdminComment.all
    render :index
  end

  def create
    @admin_comment = AdminComment.create(
     review_id: params[:review_id],
      user_id: params[:user_id],
      admin_comment: params[:admin_comment],
    )
    render :show
  end

  def show
    @admin_comment = AdminComment.find_by(id: params[:id])
    render :show
  end

  def update
    @admin_comment = AdminComment.find_by(id: params[:id])
    @admin_comment.update(
      review_id: params[:review_id] || @admin_comment.review_id,
      user_id: params[:user_id] || @admin_comment.user_id,
      admin_comment: params[:admin_comment] || @admin_comment.admin_comment,
    )
    render :show
  end
end
