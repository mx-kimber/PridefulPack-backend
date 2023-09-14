class AdminCommentsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  before_action :set_admin_comment, only: [:show, :update, :destroy]

  def index
    @admin_comments = AdminComment.all
    render :index
  end

  def create
    @admin_comment = current_user.admin_comments.build(admin_comment_params)
    if @admin_comment.save
      render :show
    else
      render json: { errors: @admin_comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    render :show
  end

  def update
    if can_update_or_destroy?
      if @admin_comment.update(admin_comment_params)
        render :show
      else
        render json: { errors: @admin_comment.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render_permission_denied
    end
  end

  def destroy
    if can_update_or_destroy?
      @admin_comment.destroy
      render json: { message: "Admin comment destroyed successfully" }
    else
      render_permission_denied
    end
  end

  private

  def admin_comment_params
    params.permit(:review_id, :comment)
  end

  def set_admin_comment
    @admin_comment = AdminComment.find_by(id: params[:id])
    render json: { error: 'Admin comment not found' }, status: :not_found unless @admin_comment
  end

  def can_update_or_destroy?
    @admin_comment.user == current_user || current_user.admin_permission
  end

  def render_permission_denied
    render json: { error: 'Permission denied' }, status: :forbidden
  end
end
