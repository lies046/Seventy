# frozen_string_literal: true

class Accounts::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  # The path used after sign up for inactive accounts.
  protected
  def after_sign_in_path_for(resource)
    admin_account_path(resource.id)
  end

  def  after_sign_out_path_for(resource)
    admin_root_path
  end
end
