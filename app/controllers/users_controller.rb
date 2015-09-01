class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def report_card
    @reports = current_user.report_card
    @watched_users = current_user.profile_watched_users
    @twitter_profile_name = current_user.twitteruser.name
    @twitter_handle = current_user.twitteruser.nickname
    @twitter_profile_image = current_user.twitteruser.larger_image
  end

  def watch
    @user = User.find(params[:id])
    @user.watch(current_user)
    redirect_to show_path(@user)
  end

  # GET /users
  # GET /users.json

  # GET /users/1
  # GET /users/1.json
  def show
    @current_user = current_user
    @watched_users = current_user.profile_watched_users
    @watched_user_endorsements = @watched_users.map { |twitteruser| twitteruser.user.profile_endorsed_candidates }

    @twitter_profile_name = current_user.twitteruser.name
    @twitter_handle = current_user.twitteruser.nickname
    @twitter_profile_image = current_user.twitteruser.larger_image

    @endorsed_candidates = current_user.profile_endorsed_candidates
    # @endorsed_candidate_endorsers = @endorsed_candidates.map { |twitteruser| twitteruser.user.  "which organizations are watching this user"  }
  end


  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
   p env["omniauth.auth"]
    User.create_from_omniauth(auth)
    redirect_to root_url

  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:twitter_id, :token, :expires, :district)
    end
end
