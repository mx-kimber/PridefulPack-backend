class ServiceOfferingsController < ApplicationController
  def index
    @service_offerings= ServiceOffering.all
    render :index
  end
end

