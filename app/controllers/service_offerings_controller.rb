class ServiceOfferingsController < ApplicationController
  def index
    @service_offerings= ServiceOffering.all
    render :index
  end

  def create
    # note to self: create a table to have more than one extra_service

    @service_offering = ServiceOffering.create(
      service: params[:service],
      duration: params[:duration],
      price: params[:price],
      included: params[:included],
      extra_service: params[:extra_service]
    )

    @service_offering.save
    
    render :show
  end
  
  
  
end
