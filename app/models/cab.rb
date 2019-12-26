class NumberOfSeatsValidator < ActiveModel::Validator
  def validate(record)
    if record.number_of_seats == 3 or record.number_of_seats == 4
      true
    else
      record.errors[:name] << 'Need 3 or 4 seats only!'  
      false
    end  
  end  
end

class Cab < ApplicationRecord
  
  has_many :rides
  validates :cab_number, :number_of_seats, presence: true
  validates :cab_number, uniquesness: true
  validates_with NumberOfSeatsValidator
  after_validation do |cab|
    puts "Object validated.."
  end

end
