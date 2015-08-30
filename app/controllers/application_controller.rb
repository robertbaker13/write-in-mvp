class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= session[:user] # this will not work until sessions are built
  end

  def logged_in?
    !!@current_user
  end
end
