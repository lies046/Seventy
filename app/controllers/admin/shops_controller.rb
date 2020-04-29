class Admin::ShopsController < ApplicationController

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.account_id = current_account.id

    if @shop.save
      redirect_to  admin_account_path(current_account.id)
    else
      render :new
    end
  end

  def show
  @shop = Shop.find(params[:id])
  end

  private
  def shop_params
    params.require(:shop).permit(:address, :business_day, :regular_holiday, :opening_hours, :closing_time)
  end

end