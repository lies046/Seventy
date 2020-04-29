class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:shop_name])
    devise_parameter_sanitizer.permit(:update, keys: [:shop_name])
  end

  def after_sign_in_path_for(resource)
    admin_account_path(resource.id)
  end
end
