# == Schema Information
#
# Table name: venues
#
#  city       :string(255)
#  country    :string(255)
#  created_at :datetime         not null
#  desc       :string(255)
#  id         :integer          not null, primary key
#  latitude   :float
#  longitude  :float
#  name       :string(255)
#  state      :string(255)
#  street     :string(255)
#  updated_at :datetime         not null
#  zip        :integer
#

class Venue < ActiveRecord::Base
  attr_accessible :city, :country, :desc, :latitude, :longitude, :name, :state, :street, :zip
end
