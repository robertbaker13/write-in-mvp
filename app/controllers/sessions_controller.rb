class SessionsController < ApplicationController
  def create
    session[:user] = User.first
    redirect_to root_path
  end

  def destroy
    session[:user] = nil
    redirect_to root_path
  end
end
