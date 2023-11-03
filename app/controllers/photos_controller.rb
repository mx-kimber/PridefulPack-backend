class PhotosController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  before_action :set_photo, only: [:show, :update, :destroy]

  def index
    @photos = Photo.order(created_at: :desc)
    render :index
  end

  def create
    @photo = Photo.new(photo_params)
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
    if @photo.update(photo_params)
      render :show
    else
      render json: { errors: @photo.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @photo.destroy
    render json: { message: "Photo destroyed successfully" }
  end

  private

  def photo_params
    params.permit(:pet_photo, :pet_name, :caption)
  end

  def set_photo
    @photo = Photo.find_by(id: params[:id])
    render json: { error: 'Photo not found' }, status: :not_found unless @photo
  end
end
