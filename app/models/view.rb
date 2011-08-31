class View < ActiveRecord::Base
  belongs_to :rule
  validates_presence_of :name
  
  has_many :conditions, :dependent => :destroy
  accepts_nested_attributes_for :conditions, :reject_if => lambda { |a| a[:condition1].blank? }, :allow_destroy => true
end

# == Schema Information
#
# Table name: views
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  rule_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

