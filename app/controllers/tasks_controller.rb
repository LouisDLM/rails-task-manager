class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def edit
  end

  def index
    @tasks = Task.all
  end

  def new
     @task = Task.new
  end

  def show
  end

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.required(:task).permit(:name, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
