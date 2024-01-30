class SocialMediaCategoriesController < ApplicationController
  
  def index
    @social_media_categories = SocialMediaCategory.all
    render :index
  end
end
