class MembersController < ApplicationController
  def index
    @members = Member.all 
  end

  def new
    @project_members = Project.new
  end

  def create
  end

  def destroy
  end
end
