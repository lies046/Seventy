class ShopsController < ApplicationController

  def index
    @account = Account.all
  end

  def show
    @account = Account.find(params[:id])
    gon.address = @account.address
    gon.env_google_map_key = ENV['GOOGLE_MAP_KEY']
    @menu = Menu.where(account_id: @account.id)
  end
end
