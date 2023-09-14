class ServiceOfferingsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  before_action :set_service_offering, only: [:show, :update, :destroy]

  def index
    @service_offerings = ServiceOffering.all
    render :index
  end

  def create
    @service_offering = current_user.service_offerings.build(service_offering_params)
    if @service_offering.save
      render :show
    else
      render json: { errors: @service_offering.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    render :show
  end

  def update
    if @service_offering.user_id == current_user.id && @service_offering.update(service_offering_params)
      render :show
    else
      render json: { errors: @service_offering.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    if @service_offering.user_id == current_user.id
      @service_offering.destroy
      render json: { message: "Service offering destroyed successfully" }
    else
      render_permission_denied
    end
  end

  private

  def service_offering_params
    params.permit(:user_id, :service, :price, :duration, :included, :extra_service)
  end

  def set_service_offering
    @service_offering = ServiceOffering.find_by(id: params[:id])
    render json: { error: 'Service offering not found' }, status: :not_found unless @service_offering
  end

  # def render_permission_denied
  #   render json: { error: 'Permission denied' }, status: :forbidden
  # end
end
