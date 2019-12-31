class User < ApplicationRecord

  has_many :ride_requests

  validates :first_name, :last_name, :contact_number, :email_id, presence: true
  validates :contact_number, uniqueness: true 
  
  before_save do
    self.first_name = self.first_name.titleize
    self.last_name = self.last_name.titleize
  end

  after_create do |user|
    puts "User created successfully.."
  end  

  def full_name
    first_name + " " + last_name
    
  end
end
