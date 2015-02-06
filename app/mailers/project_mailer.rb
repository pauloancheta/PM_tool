class ProjectMailer < ApplicationMailer
  @task = []
  
  default from: ENV["email_username"]
  def new_comment(comment)
    @comment = comment
    @discussion = @comment.discussion
    @user = @comment.user
    mail to: @user.email, subject: "New Comment Added!"
  end

  def task_done(task, finished_by)
    @finished_by = finished_by
    @task = task
    @user = @task.user
    mail to: @user.email, subject: "Task done"
  end

  handle_asynchronously :new_comment, :task_done
end



# @answer   = answer
#     @question = @answer.question
#     @user     = @question.user
#     mail to: @user.email, subject: "You've got an answer!"
