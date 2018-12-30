require 'geokit'
include Geokit::Geocoders
class BrewsController < ApplicationController

  def index
    @brews = Brew.all
  end

  def new
    @brew = Brew.new
  end

  def create

    street = params[:brew][:street]
    city = params[:brew][:city]
    state = params[:brew][:state]

    address = "#{street}, #{city}, #{state}"

    location_a = Geokit::Geocoders::GoogleGeocoder.geocode '140 Market St, San Francisco, CA'
    location_b = GoogleGeocoder.geocode("140 Market St, San Francisco, CA")

    binding.pry

  end

  private

  def brew_parms
    params.require(:brew).permit(:name, :street, :city, :state, :lat, :lng, :rating)
  end

end
