class JobsController < ApplicationController

  def index  
    @jobs = case params[:order]
            when "by_upper_bound"
              Job.all.where(is_hidden: false).order("wage_upper_bound DESC")
            when "by_lower_bound"
              Job.all.where(is_hidden: false).order("wage_lower_bound DESC")
            else
              Job.all.where(is_hidden: false).recent
            end
  end


  def show
    @job = Job.find(params[:id])

    if @job.is_hidden
      redirect_to root_path, alert: "你要访问的内容已被隐藏"
    end
  end
  
end
