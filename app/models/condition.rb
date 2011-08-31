class Condition < ActiveRecord::Base
  belongs_to :view
  validates_presence_of :condition1
end

# == Schema Information
#
# Table name: conditions
#
#  id         :integer         not null, primary key
#  condition1 :string(255)
#  condition2 :string(255)
#  condition3 :string(255)
#  view_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

