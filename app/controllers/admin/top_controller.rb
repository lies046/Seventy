class Admin::TopController < ApplicationController

  def index
    if account_signed_in?
      redirect_to admin_account_path(current_account.id)
    end
  end

end