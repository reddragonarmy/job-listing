class ResumesController < ApplicationController
  before_action :authenticate_user!

  def new
    @job = Job.find(params[:job_id])

    if (current_user.resumes & @job.resumes).empty?  # 求交集，以判断是否已经提交过简历
      @resume = Resume.new
    else
      redirect_to root_path, warning: "你已经提交过简历，请勿再次提交"
    end
  end

  def create
    @job = Job.find(params[:job_id])

    if (current_user.resumes & @job.resumes).empty?

      @resume = Resume.new(resume_params)
      @resume.job = @job
      @resume.user = current_user
      if @resume.save
        redirect_to job_path(@job), notice: "简历已成功提交，可在我个人中心里查看编辑"
      else
        render :new
      end

    else
      redirect_to root_path, warning: "你已经提交过简历，请勿再次提交"
    end
  end

  private

  def resume_params
    params.require(:resume).permit(:name, :phone, :email, :attachment)
  end

end
