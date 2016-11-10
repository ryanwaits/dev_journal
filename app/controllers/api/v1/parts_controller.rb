class Api::V1::PartsController < Api::V1::BaseController
  def index
    task = Task.find(params[:task_id])
    parts = Part.where(task_id: task.id)
    
    respond_with parts
  end

  def show
    task = Task.find(params[:task_id])
    part = Part.find(params[:id])
    
    respond_with part
  end
end