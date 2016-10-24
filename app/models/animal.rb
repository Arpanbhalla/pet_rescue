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

class Animal < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?


  belongs_to :user
  has_many :comments
  def self.search(search)
  where("species LIKE ?", "%#{search}%")
  where("breed LIKE ?", "%#{search}%")
end
end
