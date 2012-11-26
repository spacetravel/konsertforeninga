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

require 'test_helper'

class ConcertTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
