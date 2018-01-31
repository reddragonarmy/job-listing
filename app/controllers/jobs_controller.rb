class JobsController < ApplicationController

  def index
    flash[:notice] = success
    @jobs = Job.all
  end
end
