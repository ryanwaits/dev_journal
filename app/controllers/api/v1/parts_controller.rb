class Api::V1::PartsController < Api::V1::BaseController
  def index
    task = Task.find(params[:task_id])
    part = Part.find_by(task_id: task.id)
    
    respond_with part
  end
end