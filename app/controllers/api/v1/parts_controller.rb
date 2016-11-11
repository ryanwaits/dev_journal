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

  def create
    task = @user.tasks.find(params[:task_id])
    part = task.parts.build(part_params)
    if part.save
      respond_with part
    end
  end

  private

  def part_params
    params.require(:part).permit(:description, :estimate, :actual, :reflection, :priority, :done, :task_id)
  end
end