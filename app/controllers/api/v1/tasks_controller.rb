class Api::V1::TasksController < Api::V1::BaseController
  def index
    tasks = @user.tasks.order('created_at Desc')
    
    respond_with tasks
  end

  def show
    task = @user.tasks.find(params[:id])

    respond_with task
  end

  def create
    task = @user.tasks.build(task_params)
    if task.save
      respond_with task
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :level)
  end
end