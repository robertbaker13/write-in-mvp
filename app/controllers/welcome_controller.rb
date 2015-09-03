class WelcomeController < ApplicationController
  def index
    @current_user = current_user
    @logged_in = logged_in?
    @home = true # this hides the white status bar from the home page

    user = current_user || User.new

    @candidates = Candidate.list_of_candidates(user)
    @orgs_endorsing_a_candidate = @candidates.map { |twitteruser| Organization.list_of_candidate_endorsing_organizations(twitteruser.user) }

    @organizations = Organization.list_of_organizations(user)
    @candidates_endorsed_by_a_org = @organizations.map { |twitteruser| Candidate.list_of_cand_endorsed_by_org(twitteruser.user)
    }

    if @logged_in
      @twitter_profile_name = current_user.twitteruser.name
      @twitter_handle = current_user.twitteruser.nickname
      @twitter_profile_image = current_user.twitteruser.image
      @current_user_path = "/users/#{@current_user.id}"

    else
      @current_user_path = "#"
    end

    @users = User.all
  end
end
