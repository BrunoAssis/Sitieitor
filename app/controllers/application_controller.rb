class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate
  
  def authenticate
    @current_user = User.find(1)
  end
end
