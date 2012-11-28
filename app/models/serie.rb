# == Schema Information
#
# Table name: series
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  desc       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Serie < ActiveRecord::Base
  attr_accessible :name, :desc, :photo
  
  has_many :concerts
  has_many :news_bulletins


  validates_attachment :photo, :presence => true
  validates :name, presence: true
  validates :desc, presence: true
    
  has_attached_file :photo,
     :styles => { :medium => "300x300>", :thumb => "100x100>" },
     :path => "/system/:class/:id/:style/:filename",
     :storage => :s3,
     :bucket => 'konsertforeninga',
     :url  => ":s3_eu_url",
     :s3_credentials => "#{Rails.root}/config/s3.yml"
end
