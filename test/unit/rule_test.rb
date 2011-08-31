require 'test_helper'

class RuleTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Rule.new.valid?
  end
end

# == Schema Information
#
# Table name: rules
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

