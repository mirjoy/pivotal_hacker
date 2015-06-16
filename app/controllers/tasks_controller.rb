class TasksController < ApplicationController
  def new

  end

  def create
    @task = Task.new(task_params)

    if @task.save
      flash[:success] = "Your task has been saved"
      redirect_to :back
    else
      flash[:error] = "Please fill in the required fields"
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(title: params[:task][:title], description: params[:task][:description], status: params[:task][:status])
      flash[:alert] = "Your information has been updated."
      redirect_to project_path(@task.project_id)
    else
      flash[:danger] = "You are missing some fields."
      redirect_to :back
    end
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to :back
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :status, :project_id)
  end
end
