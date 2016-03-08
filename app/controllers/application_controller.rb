class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

# After sign up, direct user to admin dashboard and normal dashboard
  def after_sign_in_path_for(resource)
 		if current_user.admin?
 			admin_dashboard_path
 		else
 			dashboard_path
 		end
	end
end
