class Api::V1::PartsController < Api::V1::BaseController
  def index
    task = @user.tasks.find(params[:task_id])
    parts = Part.where(task_id: task.id)
    
    respond_with parts
  end

  def show
    part = Part.find(params[:id])
    
    respond_with part
  end
end