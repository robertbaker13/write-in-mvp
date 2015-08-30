class SessionsController < ApplicationController

  def create
    session[:current_user_id] = User.first.id
    redirect_to root_path
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end
end
