class WelcomeController < ApplicationController
  def index
    @current_user = current_user
    @logged_in = logged_in?
    @home = true # this hides the white status bar from the home page

    if @logged_in
      @current_user_path = "/users/#{@current_user.id}"
    else
      @current_user_path = "#"
    end

    @users = User.all
  end
end
