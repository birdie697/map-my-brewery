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

    name = params[:brew][:name]
    street = params[:brew][:street]
    city = params[:brew][:city]
    state = params[:brew][:state]
    rating = params[:brew][:rating]

    address = "#{street}, #{city}, #{state}"

    location = GoogleGeocoder.geocode(address)
    lat = location.lat
    lng = location.lng

    @brew = Brew.new

    @brew.name = name
    @brew.street = street
    @brew.city = city
    @brew.state = state
    @brew.lat = lat
    @brew.lng = lng
    @brew.rating = rating

    binding.pry

    if @brew.save
      redirect_to brews_path
    else
      render :new
    end

  end

  private

  def brew_parms
    params.require(:brew).permit(:name, :street, :city, :state, :lat, :lng, :rating)
  end

end
