class ShopsController < ApplicationController

  def index
    @account = Account.all
  end

  def show
    @account = Account.find(params[:id])
    gon.address = @account.address
    @menu = Menu.where(account_id: @account.id)
  end
end
