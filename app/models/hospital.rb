class Hospital < ActiveRecord::Base
	
	belongs_to :city
	has_many :doctors
	
end
