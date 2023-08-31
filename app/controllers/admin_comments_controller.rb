class AdminCommentsController < ApplicationController
  def index
    @admin_comments = AdminComment.all
    render :index
  end

  def create
    @admin_comment = AdminComment.create(admin_comment_params)
    render :show
  end

  def show
    @admin_comment = AdminComment.find_by(id: params[:id])
    render :show
  end

  def update
    @admin_comment = AdminComment.find_by(id: params[:id])
    @admin_comment.update(admin_comment_params)
    render :show
  end

  def destroy
    @admin_comment = AdminComment.find_by(id: params[:id])
    @admin_comment.destroy
    render json: { message: "admin comment destroyed successfully" }
  end

  private

  def admin_comment_params
    params.permit(:review_id, :user_id, :comment)
  end
end
