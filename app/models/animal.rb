# == Schema Information
#
# Table name: animals
#
#  id          :integer          not null, primary key
#  species     :text
#  breed       :text
#  sex         :text
#  images      :text
#  dob         :text
#  description :text
#  price       :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Animal < ActiveRecord::Base
  belongs_to :user
  has_many :comments
end
