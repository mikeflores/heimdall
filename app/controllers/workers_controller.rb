class WorkersController < ApplicationController
# when I create a project, I can add workers
# the worker can then add their time per day
# the hours total up per project

  def index
    @workers = Worker.all
  end
end