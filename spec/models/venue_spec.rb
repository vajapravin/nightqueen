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

require 'spec_helper'

describe Venue do
  pending "add some examples to (or delete) #{__FILE__}"
end
