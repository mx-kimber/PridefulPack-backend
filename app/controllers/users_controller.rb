class UsersController < ApplicationController

  def index
    @users = User.all
    render :index
  end

  def create

    @user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      password_digest: params[:password_digest],
      admin_permission: params[:admin_permission],
      bio: params[:bio],
    )

    @user.save
    
    render :show
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(
      first_name: params[:first_name] || @user.first_name,
      last_name: params[:last_name] || @user.last_name,
      email: params[:email] || @user.email,
      phone_number: params[:phone_number] || @user.phone_number,
      password_digest: params[:password_digest] || @user.password_digest,
      admin_permission: params[:admin_permission] || @user.admin_permission,
      bio: params[:bio] || @user.bio,
    )
    render :show
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: { message: "user destroyed successfully" }
  end
end
