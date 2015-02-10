class DiscussionsController < ApplicationController
  respond_to :js
  
  def index
    @discussion = Discussion.new
  end

  def new
    @project = Project.find params[:project_id]
    @discussion = Discussion.new
  end

  def create
    @project = Project.find params[:project_id]
    @discussion = @project.discussions.new params.require(:discussion).permit(:title, :description)
    @discussion.user_id = current_user.id
    if @discussion.save
      respond_with(@project, @discussion)
    end
      #redirect_to project_path(@project)
    
  end

  def show
    @discussion = Discussion.find params[:id]
    @comment = @discussion.comments.new
    @comments = @discussion.comments.all.order(:updated_at).reverse
  end

  def destroy
    @discussion = Discussion.find params[:id]
    
    @discussion.destroy

    respond_with()
    #redirect_to project_path(@discussion.project_id), alert: "Discussion deleted"
  end
end
