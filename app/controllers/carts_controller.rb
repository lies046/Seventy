class CartsController < ApplicationController
  require 'payjp'
  before_action :setup_cart_item!, only: [:add_item, :update_item, :delete_item]

  def show
    @cart_items = current_cart.cart_items
    @total_price = 0
    @cart_items.each do |price|
      @total_price += price.menu.price * price.quantity
    end
  end

  # 商品一覧画面から、「商品購入」を押した時のアクション
  def add_item
    if @cart_item.blank?
      @cart_item = current_cart.cart_items.build(menu_id: params[:menu_id], quantity: params[:quantity].to_i)
    end

    # @cart_item.quantity += params[:quantity].to_i
    @cart_item.save
    redirect_to cart_path(current_cart)
  end

  # カート詳細画面から、「更新」を押した時のアクション
  def update_item
    @cart_item.update(quantity: params[:quantity].to_i)
    redirect_to current_cart
  end

 # カート詳細画面から、「削除」を押した時のアクション
  def delete_item
    # @cart_item = CartItem.find(params[:id])
    
    # @cart_item.destroy
    # redirect_to current_cart
    @cart = current_cart
    @cart.destroy
    session[:cart_id] = nil
    flash[:success] = "カートを削除しました。"
    redirect_to root_path
  end

  def pay
    @cart_items = current_cart.cart_items
    @total_price = 0
    @cart_items.each do |price|
      @total_price += price.menu.price * price.quantity
    end

    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
      :amount => @total_price,
      :card => params['payjp-token'],
      :currency => 'jpy'
    )
    redirect_to action: :done
  end

  def done
    session[:cart_id] = nil
  end

  private

  def setup_cart_item!
    @cart_item = current_cart.cart_items.find_by(menu_id: params[:menu_id])
  end
end
