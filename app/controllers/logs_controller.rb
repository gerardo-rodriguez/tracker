class LogsController < ApplicationController
	before_action :authenticate_user!

	def index
		@logs = Log.all
	end

	def new
		@log = Log.new
	end

	def create
		@log = Log.new(log_params)
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
end
