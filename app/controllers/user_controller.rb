
class UserController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(verify_new_user)
  end


  private

  def verify_new_user
    params.require(:user).permit(:name, :email, :password)
  end


end
