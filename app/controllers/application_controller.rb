class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  helper_method :current_cart

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:shop_name, :address, :regular_holiday, :opening_hours, :closing_time, :image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:shop_name,:address, :regular_holiday, :opening_hours, :closing_time, :image])
  end

  def current_cart
    if session[:cart_id]
      @cart = Cart.find(session[:cart_id])
    else
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end
end

