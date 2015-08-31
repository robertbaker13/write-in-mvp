class SessionsController < ApplicationController

  def create
    twitter_user = Twitteruser.create_or_update(env["omniauth.auth"])
    user = User.create_or_update(twitter_user)
    organization = Organization.create_or_update(user)
    session[:current_user_id] = user.id
    twitter_user.user_id = user.id
    twitter_user.save
    redirect_to root_url, notice: "Signed in"
  end

  # def create_user
  #   user = User.create(token: @twitter_user.token)
  #   @twitter_user.user_id = user.id
  #   @twitter_user.save
  #   # session[:user_id] = user.id
  #   # session[:user_id] = user.id
  # end

  # def update_user
  #   twitter_user = Twitteruser.find()
  #   twitter_user.update_from_omniauth()
  # end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end

  # def user_exist?
  #   User.find_by(uid: @twitter_user.uid)
  # end


end

