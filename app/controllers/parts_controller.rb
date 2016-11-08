class PartsController < ApplicationController
  before_action :find_part, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    
  end

  def create
    @task = Task.find(params[:task_id])
    @part = @task.parts.build(part_params)
    if @part.save
      redirect_to task_path(@task)
    end
  end

  def edit
  end

  def update
    @part.update(part_params.merge!(done: true))
    if @part.save
      redirect_to @part.task
    else
      render :show
    end
  end

  private

  def find_part
    @part = Part.find(params[:id])
  end

  def part_params
    params.require(:part).permit(:description, :estimate, :actual, :reflection, :priority, :done, :task_id)
  end

end
