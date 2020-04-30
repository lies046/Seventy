class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:shop_name, :address, :regular_holiday, :opening_hours, :closing_time, :image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:shop_name,:address, :regular_holiday, :opening_hours, :closing_time, :image])
  end

  def after_sign_in_path_for(resource)
    admin_account_path(resource.id)
  end

  def after_account_update_path_for(resource)
    admin_account_path(resource.id)
  end
end

