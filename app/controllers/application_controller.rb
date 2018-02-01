class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_is_admin
    unless current_user.is_admin?
      redirect_to root_path, alert: "你没有权限"
    end
  end
end
