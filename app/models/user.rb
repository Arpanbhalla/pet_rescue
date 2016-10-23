# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  first_name      :string
#  last_name       :string
#  address         :string
#  mobile          :text
#  image           :text
#  admin           :boolean          default(FALSE)
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
    geocoded_by :address
    after_validation :geocode, :if => :address_changed?

    has_many :animals
    has_many :comments
    has_secure_password
    # geocoder

end
