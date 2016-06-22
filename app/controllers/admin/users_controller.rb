class Admin::UsersController < Admin::ApplicationController

	def index
		@users = User.page(params[:page]).per(5)
	end

end