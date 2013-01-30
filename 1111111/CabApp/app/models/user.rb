class User < ActiveRecord::Base
  attr_accessible :name

  validates_length_of :name, :maximum => 100

  def capitalised_name
    self.name.capitalize
  end
end