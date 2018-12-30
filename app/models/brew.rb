class Brew < ApplicationRecord
  acts_as_mappable :auto_geocode=>{:field=>:address, :error_message=>'Could not geocode address'}

  validates :name, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
  validates :rating, presence: true

end
