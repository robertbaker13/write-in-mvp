class SessionsController < ApplicationController
  def create
    raise env["omniauth.auth"].to_yaml
  end

  def destroy
    session[:user] = nil
    redirect_to root_path
  end
end

