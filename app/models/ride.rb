class Ride < ApplicationRecord
  
  has_many :ride_requests
  belongs_to :driver
  belongs_to :cab

  def driver_name
    driver.first_name + " " + driver.last_name
  end  
end
