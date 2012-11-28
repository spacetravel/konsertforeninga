# == Schema Information
#
# Table name: concerts
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  short_desc     :text
#  desc           :text
#  show_date_time :datetime
#  serie_id       :integer
#  price          :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Concert < ActiveRecord::Base
  attr_accessible :title, :desc, :show_date, :show_time, :price, :serie_id, :venue_id, :photo
  
  belongs_to :serie
  belongs_to :venue

  validates_attachment :photo, :presence => true
    
  has_attached_file :photo,
     :styles => { :large => "600x600", :medium => "300x300>", :thumb => "100x100>" },
     :path => "public/system/:class/:id/:style/:filename",
     :url => "/system/:class/:id/:style/:basename.:extension"
        
end
