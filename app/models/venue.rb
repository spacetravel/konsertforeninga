class Venue < ActiveRecord::Base
  attr_accessible :name, :link, :desc
  
  has_many :concerts
end
