class SocialMediaAccountsController < ApplicationController
  before_action :set_social_media_account, only: [:show, :update, :destroy]

  def index
    @social_media_accounts = SocialMediaAccount.all
    render json: @social_media_accounts
  end

  def create
    @social_media_account = SocialMediaAccount.new(social_params)

    if @social_media_account.save
      render json: @social_media_account, status: :created
    else
      render json: { errors: @social_media_account.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    render json: @social_media_account
  end

  def update
    if @social_media_account.update(social_params)
      render json: @social_media_account
    else
      render json: { errors: @social_media_account.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    if @social_media_account.destroy
      render json: { message: 'Social Media Account was successfully deleted' }
    else
      render json: { error: 'Failed to delete Social Media Account' }, status: :unprocessable_entity
    end
  end

  private

  def social_params
    params.permit(:account_handle, :account_URL, :social_media_category_id, :user_id)
  end

  def set_social_media_account
    @social_media_account = SocialMediaAccount.find_by(id: params[:id])

    unless @social_media_account
      render json: { error: 'Social Media Account not found' }, status: :not_found
    end
  end
end
