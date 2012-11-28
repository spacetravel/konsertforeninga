class Venue < ActiveRecord::Base
  attr_accessible :name, :link, :desc
  
  validates :name, presence: true
  validates :link, presence: true
  validates :desc, presence: true

  has_many :concerts
end
