class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :is_signed_in?

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    else
      nil
    end
  end

  def is_signed_in?
    current_user.present?
  end

end

  