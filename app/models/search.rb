class Search < ActiveRecord::Base
	def search_refreshes

		refreshes = Refresh.all

		refreshes = refreshes.where(["device_name LIKE ?","%#{keywords}%"]) if keywords.present?
		refreshes = refreshes.where(["device_model LIKE ?","%#{device_model}"])
		refreshes = refreshes.where(["device_type LIKE ?",device_type]) if device_type.present?
		refreshes = refreshes.where(["start_date = ?",start_date]) if start_date.present?
		refreshes = refreshes.where(["expiry_date = ?",expiry_date]) if expiry_date.present?

		return refreshes
	end
end