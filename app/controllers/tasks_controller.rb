class TasksController < ApplicationController
  before_action :task_id, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.order(:id).reverse
  end

  def new
    @task = Task.new 
  end

  def create
    @task = Task.new task_params
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @task.update task_params
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :due_date)
  end

  def task_id
    @task = Task.find params[:id]
  end
end
