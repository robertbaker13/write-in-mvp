class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user_id
    @current_user_id ||= session[:current_user_id]
  end

  def logged_in?
    User.where(id: session[:current_user_id]).count > 0
  end
end
