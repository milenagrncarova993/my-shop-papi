class ListingsController < ApplicationController

  def new
    @listing = Listing.new
  end
  
  def create
    @listing = Listing.new(listing_params)
    if @listing.save
    redirect_to @lisitng
    else
    render :new
  end
  end

  private
    
  def listing_params
    params.require(:listing).permit(:title, :category, :price, :size, :description)
  end
    
end