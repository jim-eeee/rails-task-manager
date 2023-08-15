class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end
end
