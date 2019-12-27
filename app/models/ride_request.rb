class MultipleRequestValidator < ActiveModel::Validator
  def validate(record)
    
  end  
end

class RideRequest < ApplicationRecord

  belongs_to :user
  belongs_to :ride
  validates_with MultipleRequestValidator

end
