class TasksController < ApplicationController
  def new

  end

  def create
    @task = Task.new(task_params)

    if @task.save
      flash[:success] = "Your task has been saved"
    else
      flash[:error] = "Please fill in the required fields"
    end

    redirect_to :back
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :status, :project_id)
  end
end
