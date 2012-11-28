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
  attr_accessible :title, :content, :serie_id
  
  belongs_to :serie

  validates :title, presence: true
  validates :serie_id, presence: true
  validates :content, presence: true
end
