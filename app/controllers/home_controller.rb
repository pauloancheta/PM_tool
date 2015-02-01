class HomeController < ApplicationController
  def index
    # if user_signed_in?
    #   projects = Project.where(user_id: current_user.id ).count
    #   if projects == 0
    #     redirect_to new_project_path
    #   end
    # else
    #   redirect_to user_session_path
    # end
  end

  def about
  end
end
