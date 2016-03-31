class ApplicationController < ActionController::Base
   
 USER_ID = "admin"
 PASSWORD = "admin"

  include Monban::ControllerHelpers
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_account
   	authenticate_or_request_with_http_basic do |id, password|
       id == USER_ID && password == PASSWORD
   	end
  end

  def current_user
  	super || Guest.new
  end

end
