class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    render :index
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render :show
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    render :show
  end

  def update
    if @user.update(user_params)
      render :show
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    render json: { message: "User destroyed successfully" }
  end

  private

  def set_user
    @user = User.find_by(id: params[:id])
    render json: { error: "User not found" }, status: :not_found unless @user
  end

  def user_params
    params.permit(
      :first_name,
      :last_name,
      :email,
      :phone_number,
      :password_digest,
      :admin_permission,
      :bio
    )
  end
end
