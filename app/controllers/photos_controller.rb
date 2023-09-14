class PhotosController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  before_action :set_photo, only: [:show, :update, :destroy]

  def index
    @photos = Photo.all
    render :index
  end

  def create
    @photo = current_user.photos.build(photo_params)
    if @photo.save
      render :show
    else
      render json: { errors: @photo.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    render :show
  end

  def update
    if @photo.user_id == current_user.id && @photo.update(photo_params)
      render :show
    else
      render json: { errors: @photo.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    if @photo.user_id == current_user.id
      @photo.destroy
      render json: { message: "Photo destroyed successfully" }
    else
      render_permission_denied
    end
  end

  private

  def photo_params
    params.permit(:user_id, :pet_photo, :pet_name, :caption)
  end

  def set_photo
    @photo = Photo.find_by(id: params[:id])
    render json: { error: 'Photo not found' }, status: :not_found unless @photo
  end

  # def render_permission_denied
  #   render json: { error: 'Permission denied' }, status: :forbidden
  # end
end
