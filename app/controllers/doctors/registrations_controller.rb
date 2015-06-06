class Doctors::RegistrationController < Devise::RegistrationsController

	skip_before_action :require_no_authentication, only: [:new, :create, :cancel]
	
	prepend_before_action :authenticate_super_doctor!, only: [:new, :create, :cancel]

	
	protected
	
		def sign_up(resource_name, resource)
		end
		
		def authenticate_super_doctor!
			authenticate_scope!
		
			unless resource.super_doctor?
				redirect_to  root_path
			end
		
		end	
	
end
