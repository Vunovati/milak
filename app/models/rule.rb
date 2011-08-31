class Rule < ActiveRecord::Base
  attr_accessible :title, :views_attributes
  has_many :views, :dependent => :destroy
  validates_presence_of :title
  
  accepts_nested_attributes_for :views, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
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

