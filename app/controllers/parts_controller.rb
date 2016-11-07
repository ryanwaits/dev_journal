class PartsController < ApplicationController

  def new
    
  end

  def create
    @task = Task.find(params[:task_id])
    @part = @task.parts.build(part_params)
    if @part.save
      redirect_to task_path(@task)
    end
  end

  private

  def part_params
    params.require(:part).permit(:description, :estimate, :actual, :reflection, :task_id)
  end

end
