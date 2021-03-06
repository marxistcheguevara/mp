class ActivitiesController < InheritedResources::Base
		#before_action :authenticate_doctor!
		#before_action :authenticate_patient!, only: [:index, :show] 
		
  def index	
		@activities = current_patient.activities || current_doctor.activities 
	end
	
	def show
		#@activity = @activities.find(params[:id])
	end
	
	def new
	end
	
	def create
	end
	
	def edit
	end
	
	def update
	end
	
	private
	
		def curses
			if doctor_signed_in?
				@curses = current_doctor
			elsif patient_signed_in?
				@curses = current_patient
			else
				redirect_to root_path
			end
		end
		
    def activity_params
      params.require(:activity).permit(:examination_id, :doctor_id, :patient_id, :notes, :attachments, :hospital_id)
    end
end

