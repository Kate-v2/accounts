
class UserController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(verify_new_user)
    # redirect_to SOMEWHERE
    # WHERE DO I PUT A SESSION ?
    # HOW DO YOU LOG IN OR OUT ?
    # WHAT DOES A SESSION MODEL HOLD??
  end


  private

  def verify_new_user
    params.require(:user).permit(:name, :email, :password)
  end


end
