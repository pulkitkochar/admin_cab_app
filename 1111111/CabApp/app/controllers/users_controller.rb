class UsersController < ApplicationController
  def create
    user = User.new params[:user]
    redirect_to "/users" if user.save
  end
end