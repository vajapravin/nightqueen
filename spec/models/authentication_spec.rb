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

require 'spec_helper'

describe Authentication do
  pending "add some examples to (or delete) #{__FILE__}"
end
