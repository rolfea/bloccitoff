class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @items = @user.items(current_user)
  end

  def create
  end
end
