# == Schema Information
#
# Table name: authentications
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  index      :string(255)
#  provider   :string(255)
#  uid        :string(255)
#  updated_at :datetime         not null
#  user_id    :integer
#

class Authentication < ActiveRecord::Base
  belongs_to :user  
  attr_accessible :index, :provider, :uid, :user_id
end
