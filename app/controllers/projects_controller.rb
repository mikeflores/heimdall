class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.total_hours = 0
    @project.save
    redirect_to projects_path(@project)
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to projects_path(@project)
  end

  private
  def project_params
    params.require(:project).permit(:name)
  end
end
