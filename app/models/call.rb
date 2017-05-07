# == Schema Information
#
# Table name: calls
#
#  id          :integer          not null, primary key
#  to_number   :string
#  from_number :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_calls_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_8e1b2ecfdf  (user_id => users.id)
#

class Call < ApplicationRecord
  belongs_to :user
end
