class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user



  def current_user
    @current_user = @current_user || User.find_by_id(cookies[:user_id])
  end

  def current_user= user
    cookies[:user_id] = { value: user.id, expires: 1.month.from_now }
  end
end
