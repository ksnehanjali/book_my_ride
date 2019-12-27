class RidesController < ApplicationController

  def index
    ride_count = Ride.count
    @count = ride_count

    @rides_list = Ride.all.includes(:driver)
  end

  def new
    
  end  
end
