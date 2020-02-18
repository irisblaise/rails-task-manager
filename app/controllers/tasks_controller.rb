class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end


