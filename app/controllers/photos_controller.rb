class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    render :index
  end

  def create
    @photo = Photo.create(
      pet_photo: params[:pet_photo],
      pet_name: params[:pet_name],
      caption: params[:caption],
    )
    render :show
  end
end
