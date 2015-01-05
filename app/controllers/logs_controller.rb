class LogsController < ApplicationController
	before_action :authenticate_user!

	def index
		@logs = Log.all
	end

	def new
		@log = Log.new
	end
end
