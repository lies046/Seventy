class ShopsController < ApplicationController

  def index
    @account = Account.all
  end

  def show
    @account = Account.find(params[:id])
    @menu = Menu.where(account_id: @account.id)
  end
end
