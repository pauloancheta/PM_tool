class ProjectsController < ApplicationController
  before_action :project_id, only: [:show, :edit, :update, :destroy, :toggle]
  def index
    
    if params[:search].present?
      @projects = Project.paginate(:page => params[:page], :per_page => 5).search params[:status]
    else
      @projects = Project.paginate(:page => params[:page], :per_page => 5).order(:status)
    end
  end

  def new
    @project = Project.new 
  end

  def create
    @project = Project.new project_params
    @project.finished = false #you cannot create a finished project. That would not make sense
    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def show
    # @task = Task.new
  end

  def edit
  end

  def update
    @project.update project_params
    redirect_to projects_path
  end

  def destroy
    @project.destroy
    redirect_to projects_path 
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
