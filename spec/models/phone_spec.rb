require 'spec_helper'

describe Phone do
  it "should have 10 digits" do
    phone = Phone.new number => "9888276765"
    phone.length.should == 10
  end
end