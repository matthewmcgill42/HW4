class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new
    @user["username"] = params["username"]
    @user["email"] = params["email"]
    @user.password = params["password"]
    @user.password_confirmation = params["password_confirmation"]
    @user.save
    redirect_to "/sessions/new"
  end
end