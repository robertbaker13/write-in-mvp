class WelcomeController < ApplicationController
  def index
    @logged_in = logged_in?
    @current_user_id = current_user_id
    @users = User.all
  end
end
