class Admin::ApplicationController < ApplicationController

  before_filter :check_admin

  private

  def check_admin
  	# binding.pry
   	if current_user.is_admin?
   		admin_users_path
   	else
   		flash[:alert] = "You must be admin!"
   		redirect_to movies_path
   	end
  end

end