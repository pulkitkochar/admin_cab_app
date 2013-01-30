require 'spec_helper'

describe User do
  context "validations on data" do
    it "should not allow user with name more than 100 chars" do
      user = User.new :name => "name"*50
      user.save.should == false
      user.errors.size.should_not == 0
    end
  end

  context "name" do
    it "should capitalize the name for user" do
      user = User.create :name => "vishAl shaRmA"

      user.capitalised_name.should == "Vishal sharma"
    end
  end
end