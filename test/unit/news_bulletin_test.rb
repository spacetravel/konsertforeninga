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

require 'test_helper'

class NewsBulletinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
