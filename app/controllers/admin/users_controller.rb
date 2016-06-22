class Admin::UsersController < Admin::ApplicationController

	def index
		@users = User.page(params[:page]).per(5)
	end

	def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to admin_users_path
  end

end