class ItemsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    item = @user.items.new(item_params)
    item.user = current_user

    if item.save
      flash[:notice] = "Item saved successfully."
      redirect_to [@user]
    else
      flash[:error] = "Item did not save. Please try again."
      redirect_to [@user]
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @item = @user.items.find(params[:id])

    if @item.destroy
      flash[:notice] = "Item was completed."
    else
      flash[:error] = "Item could not be removed. Try again."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
