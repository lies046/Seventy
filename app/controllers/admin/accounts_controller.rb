class Admin::AccountsController < ApplicationController
  def show
    @account = Account.find(params[:id])
    @menu = Menu.where(account_id: @account.id)
  end
end