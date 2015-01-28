class TasksController < ApplicationController
  before_action :task_id, only: [:new, :create, :destroy, :edit, :update, :toggle]
  before_action :project_id, only: [:destroy, :edit, :update]

  def new
    @task = @project.tasks.new
  end

  def create
    @task = @project.tasks.new task_params
    @task.user_id = current_user.id
    @task.status = false #you cannot create a finished project. That would not make sense
    if @task.save
      redirect_to project_path(@project), notice: "Task created successfully"
    else
      @project.tasks.reload
      redirect_to project_path(@project), alert: "Invalid task!"
    end
  end

  def destroy
    @task.destroy
    redirect_to project_path(@project), notice: "Task deleted"
  end

  def edit
  end

  def update
    @task.update task_params
    redirect_to project_path(@project), notice: "Task updated"
  end

  #toggle button
  def toggle
    if @task.status == true
      @task.status = false
    else
      @task.status = true
    end
    @task.save
    redirect_to project_path(@task.project_id)
  end

  #private methods begin
  private
  def task_params
    params.require(:task).permit(:title, :due_date)
  end

  def task_id
    @task = Task.find params[:id]
  end

  def project_id
    @project = Project.find params[:project_id]
  end

end
