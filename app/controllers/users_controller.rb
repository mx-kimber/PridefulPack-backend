class UsersController < ApplicationController
  # before_action :authenticate_user 
  # before_action :authorize_admin, only: [:create, :update, :destroy]

  def index
    @users = User.order(created_at: :asc)
    @users = @users.sort_by { |user| user == current_user ? -1 : 1 }
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
    if current_user
      @user = current_user
      render :show
    else
      render json: { error: "Unauthorized access" }, status: :unauthorized
    end
  end

  def update
    @user = User.find_by(id: params[:id])

    if @user.update(user_params)
      render :show
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: { message: "User destroyed successfully" }
  end


  def avatar_upload
    file = params[:file]

    cloudinary_response = Cloudinary::Uploader.upload(file.path, upload_preset: ENV['CLOUDINARY_UPLOAD_PRESET'])
  
    user = current_user
  
    user.profile_photo = cloudinary_response['public_id']
    user.save
  
    render json: cloudinary_response
  end

  private

  def user_params
    params.permit(
      :first_name,
      :last_name,
      :email,
      :phone_number,
      :password,
      :password_confirmation,
      :profile_photo,
      :admin_permission,
      :bio,
      :file,
      :street_address,
      :city,
      :state,
      :zip_code,
      :address_details
    )
  end
  
end
