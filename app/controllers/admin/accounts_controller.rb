class Admin::AccountsController < ApplicationController
  before_action :authenticate_account!
  def show
    @account = Account.find(params[:id])
    @menu = Menu.where(account_id: @account.id)
  end

  def order
    @account = Account.find(current_account.id)
    @menu = Menu.where(account_id: @account.id)
    @order = CartItem.where(menu_id: @menu)
  end
end 