# == Schema Information
#
# Table name: animals
#
#  id          :integer          not null, primary key
#  species     :text
#  breed       :text
#  sex         :text
#  dob         :text
#  description :text
#  price       :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  images      :text             default([]), is an Array
#

require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
