class SessionsController < ApplicationController
  def create
    session[:user] = User.first
  end

  def destroy
    session[:user] = nil
  end
end
