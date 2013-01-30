require 'spec_helper'

describe UsersController do
  it "should create a user" do
    post :create, :user => {:name => "Rahul"}

    response.should redirect_to "/users"
    user = User.all
    user.size.should == 1
    user.first.name.should == "Rahul"
  end

  it "should not redirect in case of some error" do
    User.any_instance.stub :save => false

    post :create, :user => {:name => "Rahul"}

    response.should_not redirect_to "/users"
  end
end