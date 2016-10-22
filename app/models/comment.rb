# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  animal_id  :integer
#  created_at :datetime         not null
#  user_id    :integer
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  belongs_to :animal
  belongs_to :user

end
