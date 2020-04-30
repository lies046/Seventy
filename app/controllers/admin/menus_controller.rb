class Admin::MenusController < ApplicationController

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    @menu.account_id = current_account.id

    if @menu.save
      flash[:success] = "商品を登録しました。"
      redirect_to  new_admin_account_menu_path(current_account.id)
    else
      lash[:danger] = "商品の登録に失敗しました。"
      render :new
    end
  end

  private
  def menu_params
    params.require(:menu).permit(:product_name, :price, :image)
  end

end