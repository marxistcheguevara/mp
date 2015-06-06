class City < ActiveRecord::Base
	
	has_many :doctors
	has_many :patients
	has_many :hospitals 	
	
end
