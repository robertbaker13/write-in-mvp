class OrganizationsController < ApplicationController

  def watch
    return nil unless @current_user = current_user
    organization = Organization.find(params[:id])
    @user = organization.user
    @user.watch(@current_user)
    if request.xhr?
      render json: true
    else
      redirect_to show_path(current_user)
    end
  end

  def unwatch
    return nil unless @current_user = current_user
    org_to_unwatch = Organization.find(params[:id])
    @user_to_unwatch = org_to_unwatch.user
    @user_to_unwatch.unwatch(@current_user)
    if request.xhr?
      render json: true
    else
      redirect_to show_path(current_user)
    end
  end
end
