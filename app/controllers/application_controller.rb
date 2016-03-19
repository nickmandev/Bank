class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  add_flash_types :notice


	def current_user
 	@current_user = User.find_by_id(session[:user_id])
 	return @current_user
 	end
 	
 
 	helper_method :current_user

	def authenticate_user
 	redirect_to(login_url, notice:"You must be signed in to view this page!") unless current_user.present?
	end
	
	helper_method :authenticate_user

end
