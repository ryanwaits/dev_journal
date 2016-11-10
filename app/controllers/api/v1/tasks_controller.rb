class Api::V1::TasksController < Api::V1::BaseController
  def index
    tasks = Task.order('created_at Desc')
    respond_with tasks
  end

  def show
    task = Task.find(params[:id])
    respond_with task
  end
end