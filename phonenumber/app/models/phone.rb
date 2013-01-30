class Phone < ActiveRecord::Base

  attr_accessible :number

  validates_presence_of :number
  validates_length_of :number, :is => 10
end
