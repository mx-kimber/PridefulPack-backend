class AdminCommentsController < ApplicationController

  def index
    @admin_comments = AdminComment.all
    render :index
  end

  def create
    @admin_comment = AdminComment.create(
     review_id: params[:review_id],
      user_id: params[:user_id],
      comment: params[:comment],
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
      comment: params[:comment] || @admin_comment.comment,
    )
    render :show
  end

  def destroy
    @admin_comment = AdminComment.find_by(id: params[:id])
    @admin_comment.destroy
    render json: { message: "admin comment destroyed successfully" }
  end
end
