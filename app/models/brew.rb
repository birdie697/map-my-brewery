class Brew < ApplicationRecord

  validates :name, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
  validates :rating, presence: true

end
