class SessionsController < ApplicationController
	def new
		# Present an empty login form
		@is_login = true
	end

	def create
		# if we find the user that is trying to log in, because "where" ALWAYS brings back an array		
		u = User.where(username: params[:user][:username]).first
		# ... and they had the right password...
		if u && u.authenticate(params[:user][:password])
			# Store as a cookie in the users' browser the ID of them,
			# indicating that they are logged in, and so the browser can hold who is logged in
			session[:user_id] = u.id.to_s
			redirect_to users_path
		else
			# Go back to the login page
			redirect_to new_session_path
		end
	end

	def destroy
		reset_session
		redirect_to new_session_path
	end
end