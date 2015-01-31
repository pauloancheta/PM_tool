class MembersController < ApplicationController
  def index
    @members = Member.all 
  end

  def create
  end

  def destroy
  end
end
