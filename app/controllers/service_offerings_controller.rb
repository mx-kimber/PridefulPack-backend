class ServiceOfferingsController < ApplicationController
  def index
    @service_offerings = ServiceOffering.all
    render :index
  end

  def create
    # note to self: create a table to have more than one extra_service
    @service_offering = ServiceOffering.create(service_offering_params)
    @service_offering.save
    
    render :show
  end
  
  def show
    @service_offering = ServiceOffering.find_by(id: params[:id])
    render :show
  end

  def update
    @service_offering = ServiceOffering.find_by(id: params[:id])
    @service_offering.update(service_offering_params)
    render :show
  end

  def destroy
    @service_offering = ServiceOffering.find_by(id: params[:id])
    @service_offering.destroy
    render json: { message: "service_offering destroyed successfully" }
  end
  
  private

  def service_offering_params
    params.permit(:service, :price, :duration, :included, :extra_service)
  end
end
