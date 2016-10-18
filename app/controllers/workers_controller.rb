class WorkersController < ApplicationController
# when I create a project, I can add workers
# the worker can then add their time per day
# the hours total up per worker

  def index
    @workers = Worker.all
  end

    def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(worker_params)
    @worker.total_hours_per_day = 0
    @worker.save
    redirect_to workers_path(@worker)
  end

  def edit
    @worker = Worker.find(params[:id])
  end

  def update
    @worker = Worker.find(params[:id])
    @worker.update(worker_params)
    redirect_to workers_path
  end

  def show
    @worker = Worker.find(params[:id])
  end

  def destroy
    @worker = Worker.find(params[:id])
    @worker.destroy
    redirect_to workers_path
  end

  private
  def worker_params
    params.require(:worker).permit(:name)
  end
end