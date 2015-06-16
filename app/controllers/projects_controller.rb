class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def create
    @proj = Project.new(project_params)

    if @proj.save
      flash[:alert] = "You have successfully created a new board"
      redirect_to project_path(@proj)
    else
      flash[:error] = "Please fill in the required forms"
      redirect_to :back
    end
  end

  def show
    @project = Project.find_by(id: params[:id])

    @backlogged = @project.tasks.where(status: "backlog")
    @current = @project.tasks.where(status: "current sprint")
    @progress = @project.tasks.where(status: "in progress")
    @done = @project.tasks.where(status: "done")
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
