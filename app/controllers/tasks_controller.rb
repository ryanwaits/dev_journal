class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all.order('updated_at DESC')
    @complete = Task.complete
    @in_progress = Task.in_progress
  end
  
  def show
  end
  
  def new
  end

  def create
    @task = Task.create(task_params)
    if @task.save
      redirect_to dashboard_path
      flash[:notice] = 'Task created!'
    else
      render :new
      flash[:error] = 'Unable to create task'
    end
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :level)
  end

end
