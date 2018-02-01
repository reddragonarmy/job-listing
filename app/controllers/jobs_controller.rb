class JobsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_job_and_check_permission, only: [:edit, :update, :destroy]

  def index
    @jobs = Job.all.where(is_hidden: false).recent
  end

  def show
    
  end

  def new
    @job = Job.new    
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      redirect_to jobs_path, notice: "成功建立新的招聘启示"
    else
      render :new
    end
  end

  def edit
    
  end

  def update

    if @job.update(job_params)
      redirect_to jobs_path, notice: "招聘启示已更新"
    else
      render :edit
    end

  end

  def destroy
    @job.destroy
    redirect_to jobs_path, alert: "招聘启示已删除"
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :wage_upper_bound, :wage_lower_bound, :contact, :is_hidden)
  end

  def find_job_and_check_permission
    @job = Job.find(params[:id])
  end
  
end
