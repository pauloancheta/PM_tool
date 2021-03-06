class CommentsController < ApplicationController
  respond_to :js

  def new
    @discussion = Discussion.find params[:discussion_id]
    @comment = @discussion.comments.new
  end

  def create
    @discussion = Discussion.find params[:discussion_id]
    @comment = @discussion.comments.new params.require(:comment).permit(:body)
    @comment.user_id = current_user.id
    if @comment.save
      respond_with() #@discussion, @comment ) 
      if @comment.user_id != @discussion.user_id
        ProjectMailer.delay.new_comment(@comment).deliver
      end
      #redirect_to project_discussion_path(@discussion.project_id, @discussion), notice: "Comment created successfully"
    end
  end

  def destroy
    @discussion = Discussion.find params[:discussion_id]
    @comment = Comment.find params[:id]
    @comment.destroy
    respond_with()
    #redirect_to project_discussion_path(@discussion.project_id, @discussion), notice: "Comment deleted"
  end

end
