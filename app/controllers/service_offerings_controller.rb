class ServiceOfferingsController < ApplicationController
  def index
    @service_offerings= ServiceOffering.all
    render :index
  end

  def create
    # note to self: create a table to have more than one extra_service

    @service_offering = ServiceOffering.create(
      service: params[:service],
      price: params[:price],
      duration: params[:duration],
      included: params[:included],
      extra_service: params[:extra_service]
    )

    @service_offering.save
    
    render :show
  end
  
  def show
    @service_offering = ServiceOffering.find_by(id: params[:id])
    render :show
  end

  def update
    @service_offering = ServiceOffering.find_by(id: params[:id])
    @service_offering.update(
      service: params[:service] || @service_offering.service,
      price: params[:price] || @service_offering.price,
      duration: params[:duration] || @service_offering.duration,
      included: params[:included] || @service_offering.included,
      extra_service: params[:extra_service] || @service_offering.extra_service,
    )
    render :show
  end

  def destroy
    @service_offering = ServiceOffering.find_by(id: params[:id])
    @service_offering.destroy
    render json: { message: "service_offering destroyed successfully" }
  end
  
end
