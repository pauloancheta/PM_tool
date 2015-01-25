class DiscussionsController < ApplicationController
  def index
    @discussions = Discussion.all
    @discussion = Discussion.new
  end

  def new
    @project = Project.find params[:project_id]
    @discussion = Discussion.new
  end

  def create
    @project = Project.find params[:project_id]
    @discussion = @project.discussions.new params.require(:discussion).permit(:title, :description)
    if @discussion.save
      redirect_to project_path(@project)
    end
  end

  def show
    @discussion = Discussion.find params[:id]
    @comment = @discussion.comments.new
    @comments = @discussion.comments.all
  end

  def destroy
    @discussion = Discussion.find params[:id]
    @discussion.destroy
    redirect_to project_path(@discussion.project_id)
  end
end
