class SocialMediaCategoriesController < ApplicationController
  before_action :set_social_media_category, only: [:show, :update, :destroy]

  def index
    @social_media_categories = SocialMediaCategory.all
    render json: @social_media_categories
  end
  
  def create
    @social_media_category = SocialMediaCategory.new(category_params)

    if @social_media_category.save
      render json: @social_media_category, status: :created
    else
      render json: { errors: @social_media_category.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    render json: @social_media_category
  end

  def update
    if @social_media_category.update(category_params)
      render json: @social_media_category
    else
      render json: { errors: @social_media_category.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    if @social_media_category.destroy
      render json: { message: 'Social Media Category was successfully deleted' }
    else
      render json: { error: 'Failed to delete Social Media Category' }, status: :unprocessable_entity
    end
  end
  

  private

  def category_params
    params.permit(:platform, :platform_logo)
  end 

  def set_social_media_category
    @social_media_category = SocialMediaCategory.find_by(id: params[:id])
    
    unless @social_media_category
      render json: { error: 'Social Media Category not found' }, status: :not_found
    end
  end
end
