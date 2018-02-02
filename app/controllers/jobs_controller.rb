class JobsController < ApplicationController

  def index
    @jobs = Job.all.where(is_hidden: false).recent
  end

  def show
    @job = Job.find(params[:id])

    if @job.is_hidden
      redirect_to root_path, alert: "你要访问的内容已被隐藏"
    end
  end
  
end
