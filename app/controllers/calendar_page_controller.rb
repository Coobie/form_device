class CalendarPageController < ApplicationController
	before_action :authenticate_user!
	def index
		@refreshes = Refresh.all
		@refreshes_by_date = @refreshes.group_by(&:expiry_date)
		@date = params[:date] ? Date.parse(params[:date]) : Date.today
	end
end
