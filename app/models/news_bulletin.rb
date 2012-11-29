# == Schema Information
#
# Table name: news_bulletins
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  serie_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class NewsBulletin < ActiveRecord::Base
  attr_accessible :title, :content, :serie_id, :photo
  
  belongs_to :serie

  validates :title, presence: true
  validates :serie_id, presence: true
  validates :content, presence: true
  
  validates_attachment :photo, :presence => true
    
  has_attached_file :photo,
     :styles => { :large => "300x300>", :medium => "200x200>", :thumb => "50x50>" },
     :path => "/system/:class/:id/:style/:filename",
     :storage => :s3,
     :bucket => 'konsertforeninga',
     :url  => ":s3_eu_url",
     :s3_credentials => "#{Rails.root}/config/s3.yml"

end
