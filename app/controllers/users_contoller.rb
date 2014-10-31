class UsersContoller < ApplicationController
	before_action :make_sure_admin, only: [:index]

	def index
		@users = User.all
	end

	def new
		@user = User.new
		@is_signup = true
	end

	def create
		user = User.new(params.require(:user).permit(:email, :password, :password_confirmation))
		if user.save
			session[:user_id] = user.id
			redirect_to :enablers_path
		else
			redirect_to :new_user_path
		end
	end

	def destroy
		u = User.where(id:params[:id]).first
		if u.id === current_user.id
			reset_session
		end
		u.destroy
		redirect_to new_user_path
	end
private
	def make_sure_admin
		if !current_user || !current_user.is_admin
			redirect_to enablers_path
		end
	end
end	