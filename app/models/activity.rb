class Activity < ActiveRecord::Base

	belongs_to :patient
	belongs_to :doctor
	belongs_to :hospital

end
