class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  http_basic_authenticate_with name: ENV['BASIC_AUTH_NAME'], password: ENV['BASIC_AUTH_PASSWORD'] if Rails.env.production?
  protect_from_forgery with: :exception
  helper_method :current_cart

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:shop_name, :address, :opening_hours, :closing_time, :image, :regular_holiday])
    devise_parameter_sanitizer.permit(:account_update, keys: [:shop_name,:address, :regular_holiday, :opening_hours, :closing_time, :image])
  end

  def current_cart
    @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end
end

