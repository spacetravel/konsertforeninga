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
     :path => "public/system/:class/:id/:style/:filename",
     :url => "/system/:class/:id/:style/:basename.:extension"
end
