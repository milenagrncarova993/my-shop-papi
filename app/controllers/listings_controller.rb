class ListingsController < ApplicationController
  def index #read all
    @listings = Listing.all
    end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end
  
  def create
    @listing = Listing.new(listing_params)
    @listing.save
    redirect_to listings_path(@listing)
  end

  private
    
  def listing_params
    params.require(:listing).permit(:title, :category, :price, :size, :description, :photo)
  end
    
end