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
  
end
