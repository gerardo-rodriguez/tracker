class LogsController < ApplicationController
	before_action :authenticate_user!

	def index
		@logs = Log.all
	end

	def new
		@log = Log.new
		@student = Student.new
	end

	def create
		@log = Log.new(log_params)
		
		@student = Student.where(:ssid => params[:student][:ssid])
		if @student.exists?
			# Add to the join table with current student id
			@log.students << @student
		else
			# Add to the student table a new student
			# Add to the join table with new student id
			@log.students.build(student_params)
		end
		@log.save

		redirect_to @log
	end

	def show
		@log = Log.find(params[:id])
	end

	private
		def log_params
			params.require(:log).permit(:description)
		end

		def student_params
			params.require(:student).permit(:ssid)
		end
end
