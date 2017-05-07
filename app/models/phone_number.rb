# == Schema Information
#
# Table name: phone_numbers
#
#  id         :integer          not null, primary key
#  name       :string
#  number     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PhoneNumber < ApplicationRecord
end
