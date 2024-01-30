class SocialMediaAccountsController < ApplicationController
    
  def index
    @social_media_accounts = SocialMediaAccount.all
    render :index
  end

end
