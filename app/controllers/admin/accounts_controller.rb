class Admin::AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only:[:show]
  def show
    @account = Account.find(params[:id])
    @menus = Menu.where(account_id: @account.id)
  end

  def order
    @account = Account.find(current_account.id)
    @menu = Menu.where(account_id: @account.id)
    @order = CartItem.where(menu_id: @menu)
  end

  private
    def set_account
      @account = Account.find(params[:id])
      unless current_account.id == @account.id
        redirect_to admin_account_path(current_account.id)
      end
    end
end 