class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?, only: [:index]

  def index
    @tasks = current_user.tasks
    @complete = current_user.tasks.complete
    @in_progress = current_user.tasks.in_progress
  end
  
  def show
  end
  
  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      flash[:success] = "Task created"
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def logged_in?
    redirect_to login_path unless current_user
  end

  def task_params
    params.require(:task).permit(:name, :level)
  end

end
