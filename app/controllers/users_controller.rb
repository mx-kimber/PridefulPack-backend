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
end
