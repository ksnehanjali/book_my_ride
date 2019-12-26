class Driver < ApplicationRecord

  has_many :rides
  validates :first_name, :last_name, :mobile_number, :license_number, presence: true
  validates :mobile_number, :license_number, uniqueness: true
  validates :mobile_number, numericality: true

  before_save do
    self.first_name = self.first_name.titleize
    self.last_name = self.last_name.titleize
  end

end
