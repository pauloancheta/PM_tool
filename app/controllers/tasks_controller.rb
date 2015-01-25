class TasksController < ApplicationController
  
  def new
    @project = Project.find params[:project_id]
    @task = @project.tasks.new
  end

  def create
    @project = Project.find params[:project_id]
    @task = @project.tasks.new task_params
    if @task.save
      redirect_to project_path(@project)
    else
      @project.tasks.reload
      render "projects/show"
    end
  end

  def destroy
    @project = Project.find params[:project_id]
    @task = Task.find params[:id]
    @task.destroy
    redirect_to project_path(@project)
    
  end

  def edit
    @project = Project.find params[:project_id]
    @task = Task.find params[:id]
  end

  def update
    @project = Project.find params[:project_id]
    @task = Task.find params[:id]
    @task.update task_params
    redirect_to project_path(@project)
  end

  private
  def task_params
    params.require(:task).permit(:title, :due_date)
  end

end
