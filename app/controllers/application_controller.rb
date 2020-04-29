class ApplicationController < ActionController::Base

  include SessionsHelper
    private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def task_created_by_currentuser
    if current_user.id != @task.user_id
      redirect_to '/'
    end
  end
  
end
