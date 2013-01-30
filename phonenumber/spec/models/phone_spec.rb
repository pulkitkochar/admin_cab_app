require 'spec_helper'

describe Phone do
  it "should have 10 digits" do
    phone = Phone.new :number => 9888276765
    phone.save.should == true
  end
end