class Admin::AccountsController < ApplicationController
  before_action :authenticate_account!
  def show
    @account = Account.find(params[:id])
    @menu = Menu.where(account_id: @account.id)
  end

  def order
    
  end
end