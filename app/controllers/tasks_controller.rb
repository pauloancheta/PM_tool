class TasksController < ApplicationController
  
  def new
    @project = Project.find params[:project_id]
    @task = @project.tasks.new
  end

  def create
    @project = Project.find params[:project_id]
    @task = @project.tasks.new task_params
    if @task.save
      redirect_to project_path(@project), notice: "Task created successfully"
    else
      @project.tasks.reload
      redirect_to project_path(@project), alert: "Invalid task!"
    end
  end

  def destroy
    @project = Project.find params[:project_id]
    @task = Task.find params[:id]
    @task.destroy
    redirect_to project_path(@project), notice: "Task deleted"
    
  end

  def edit
    @project = Project.find params[:project_id]
    @task = Task.find params[:id]
  end

  def update
    @project = Project.find params[:project_id]
    @task = Task.find params[:id]
    @task.update task_params
    redirect_to project_path(@project), notice: "Task updated"
  end

  private
  def task_params
    params.require(:task).permit(:title, :due_date)
  end

end
