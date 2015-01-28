class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :project_id, only: [:show, :edit, :update, :destroy, :toggle]
  def index
    
    if params[:search].present?
      @projects = Project.page(params[:page]).search params[:search]
    else
      @projects = Project.page(params[:page]).order(:status)
      # @projects = Project.search params[:status]
    end
  end

  def new
    @project = Project.new 
  end

  def create
    @project = Project.new project_params
    @project.user_id = current_user.id
    @project.status = false #you cannot create a finished project. That would not make sense
    if @project.save
      redirect_to projects_path, notice: "Project created successfully"
    else
      render :new, alert: "Invalid project"
    end
  end

  def show
    # @task = Task.new
    @user = User.find @project.user_id
  end

  def edit
  end

  def update
    @project.update project_params
    redirect_to projects_path, notice: "Project updated"
  end

  def destroy
    @project.destroy
    redirect_to projects_path, notice: "Project deleted"
  end

  #toggle button
  def toggle
    if @project.status == true
      @project.status = false
    else
      @project.status = true
    end
    @project.save
    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:title, :description, :due_date, :finished, :category)
  end

  def project_id
    @project = Project.find params[:id]
  end


end
