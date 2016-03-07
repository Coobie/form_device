class SearchesController < ApplicationController
	
	def new
		@search = Search.new
		@device_type = Refresh.uniq.pluck(:device_type)
	end

	def create
		@search = Search.create(search_params)
		redirect_to @search
	end

	def show
		@search = Search.find(params[:id])
	end

	private
	def search_params
		params.require(:search).permit(:keywords, :device_type, :device_model, :start_date, :expiry_date, :expiry_date_min, :start_datae_min)
	end
end
