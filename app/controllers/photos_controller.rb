class PhotosController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @photos = Photo.all
    render :index
  end

  def create
    @photo = Photo.create(photo_params)
    render :show
  end

  def show
    @photo = Photo.find_by(id: params[:id])
    render :show
  end

  def update
    @photo = Photo.find_by(id: params[:id])
    @photo.update(photo_params)
    render :show
  end

  def destroy
    @photo = Photo.find_by(id: params[:id])
    @photo.destroy
    render json: { message: "Photo destroyed successfully" }
  end

  private

  def photo_params
    params.permit(:pet_photo, :pet_name, :caption)
  end
end
