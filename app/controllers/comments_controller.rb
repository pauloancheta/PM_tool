class CommentsController < ApplicationController
  
  def new
    @discussion = Discussion.find params[:discussion_id]
    @comment = @discussion.comments.new
  end

  def create
    @discussion = Discussion.find params[:discussion_id]
    @comment = @discussion.comments.new params.require(:comment).permit(:body)
    if @comment.save
      redirect_to project_discussion_path(@discussion.project_id, @discussion), notice: "Comment created successfully"
    end
  end

  def destroy
    @discussion = Discussion.find params[:discussion_id]
    @comment = Comment.find params[:id]
    @comment.destroy
    redirect_to project_discussion_path(@discussion.project_id, @discussion), notice: "Comment deleted"
  end

end
