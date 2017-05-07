# == Schema Information
#
# Table name: phone_numbers
#
#  id         :integer          not null, primary key
#  name       :string
#  number     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_phone_numbers_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_af796b956a  (user_id => users.id)
#

class PhoneNumber < ApplicationRecord
  belongs_to :user
end
