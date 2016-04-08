module ApplicationHelper

	def admin?
  	@current_user_id == "1"
  # I made up the line above. Implement your own checks according to your setup
	end
end
