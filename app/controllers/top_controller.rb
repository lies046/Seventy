class TopController < ApplicationController

  def index
    @account = Account.all
  end
end
