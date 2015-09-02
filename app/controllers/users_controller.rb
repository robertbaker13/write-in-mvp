class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def report_card
    @user = User.find(params[:user_id])

    # @organizations = user.home_users_to_watch
    # @candidates_endorsed_by_orgs = @organizations.map { |twitteruser| twitteruser.user.specific_endorsed_candidates

     @user_districts = @user.district.add_parents.map {|district| district}
     @user_districts_offices = @user_districts.compact.map {|district| district.offices}.flatten
     @user_districts_offices_candidates = @user_districts_offices.compact.map {|office| office.candidates}.flatten
     @user_districts_offices_candidates_users = @user_districts_offices_candidates.compact.map {|candidate| candidate.user.twitteruser}.flatten

     #this would show all the offices and all the candidates



    # @reports = current_user.report_card
    # @watched_users = current_user.specific_watched_users
    @twitter_profile_name = @user.twitteruser.name
    @twitter_handle = @user.twitteruser.nickname
    @twitter_profile_image = @user.twitteruser.larger_image
  end

  def watch
    @user = User.find(params[:id])
    @user.watch(current_user)
    if request.xhr?
      render json: true
    else
      redirect_to show_path(@user)
    end
  end

  def unwatch
    @user_to_unwatch = User.find(params[:id])
    @user_to_unwatch.unwatch(current_user)
    if request.xhr?
      render json: true
    else
      redirect_to show_path(current_user)
    end
  end

  def endorse
    @user = User.find(params[:id])
    @user.endorse(current_user)
    if request.xhr?
      render json: true
    else
      redirect_to show_path(@user)
    end
  end

  def unendorse
    @candidate_to_unendorse = Candidate.find_by(user: User.find(params[:id]))
    current_user.unendorse(@candidate_to_unendorse)
    if request.xhr?
      render json: true
    else
      redirect_to show_path(current_user)
    end
  end

  # GET /users
  # GET /users.json

  # GET /users/1
  # GET /users/1.json
  def show
    @logged_in = logged_in?
    @current_user = current_user
    @user = User.find(params[:id])
    @watched_users = @user.specific_watched_users
    @watched_user_endorsements = @watched_users.map { |twitteruser| twitteruser.user.specific_endorsed_candidates }

    @twitter_profile_name = @user.twitteruser.name
    @twitter_handle = @user.twitteruser.nickname
    @twitter_profile_image = @user.twitteruser.larger_image

    @endorsed_candidates = @user.specific_endorsed_candidates
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
