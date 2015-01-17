class ProjectsController < ApplicationController
  before_action :project_id, only: [:show, :edit, :update, :destroy]
  def index
    @projects = Project.order(:id)
  end

  def new
    @project = Project.new 
  end

  def create
    @project = Project.new project_params
    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def show
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

  private
  def project_params
    params.require(:project).permit(:title, :description, :due_date)
  end

  def project_id
    @project = Project.find params[:id]
  end


end
