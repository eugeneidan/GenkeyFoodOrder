class RegistrationsController < Devise::RegistrationsController
	
	def create
		super

		if !is_admin_present?
   	  current_user.update_attribute :admin, true
   	else
   		current_user.update_attribute :admin, false
   	end
	end

	protected

  def is_admin_present?
  	puts "Eugene This is a check"
  	users = User.all.where(admin: true)
  	if !users.empty?
  		return true
  	else
  		return false
  	end
  end

end
