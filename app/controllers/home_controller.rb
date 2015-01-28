class HomeController < ApplicationController
  def index
    if user_signed_in?
    else
      redirect_to user_session_path
    end
  end

  def about
  end
end
