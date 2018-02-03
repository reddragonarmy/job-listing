class Account::ResumesController < ApplicationController
  before_action :authenticate_user!

  def index
    @resumes = current_user.resumes.order("created_at DESC")
  end

end
