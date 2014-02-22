module ApplicationHelper
	def signed_in_filter
		redirect_to root_path unless user_signed_in?
	end
end
