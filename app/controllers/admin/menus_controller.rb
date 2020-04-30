class Admin::MenusController < ApplicationController

  def new
    @menu = Menu.new
  end

  def create
    @Menu = Menu.new(menu_params)
    @menu.account_id = current_account.id

    if @menu.save
      redirect_to  admin_account_path(current_account.id)
    else
      render :new
    end
  end

  private
  def menu_params
    params.require(:shop).permit(:product_name, :price, :image)
  end

end