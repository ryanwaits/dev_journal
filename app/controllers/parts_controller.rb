class PartsController < ApplicationController

  def new
  end

  def create
  end

  private

  def part_params
    params.require(:part).permit(:description, :estimate, :actual, :reflection, :task_id)
  end

end
