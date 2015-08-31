class User < ActiveRecord::Base
  belongs_to :district
  has_many :candidates
  has_many :endorsements

  has_one :organization
  has_many :watchings
  has_one :twitteruser

  def name
    self.twitteruser.name
  end

  def nickname
    self.twitteruser.nickname
  end

  def location
    self.twitteruser.location
  end

  def email
    self.twitteruser.email
  end

  def image
    self.twitteruser.image
  end

  def description
    self.twitteruser.description
  end

  def website
    self.twitteruser.website
  end

  def watch(current_user)
    args = {}
    args[:user] = current_user
    args[:organization] = self.organization
    Watching.find_or_create(args)
  end

  def self.create_or_update(twitter_user)
    user = User.find_by(uid: twitter_user.uid) || User.new(uid: twitter_user.uid, district_id: 1)
    user.save
    user
  end

#Home page after logged in:
#--------------------------


  #top users to watch in user specific district calculation
  def users_score
    if self.twitter == nil || self.twitter.followers == nil || self.twitter.followers == [] || self.endorsements == [] #FL double checked these. However are there more eventualities?
      sum_score = 1
    else
      endorsements = self.endorsements.map { |endorsement| endorsement }
      followers = self.twitter.followers.map { |follower| follower }
      sum_score = endorsements.compact.count + followers.compact.count
    end
  end

  #checks that the listed users to watch are only those users that are not already watched by the viewer
  def already_watched_users #not suggested already
    watched_organizations = self.watchings.map { |watching| watching.organization }
    watched_users = watched_organizations.map { |organization|
      if organization == nil || organization == [nil] #here we need a check for eventualities
        nil
      else
        organization.user_id
      end }
    watched_users.compact
  end

  #check that all information is district specific
  def user_specific_districts
    districts = self.district.add_parents
    districts_array = districts.map {|district| district.id}
  end

  #returns all users
  def users
    users_collection = User.all
  end

  #top watch users suggestions for a specific user
  def home_login_users_to_watch
    users_array = users.map {|user| user}
    users_array_sort = users_array.sort_by {|user| user.users_score}
    filtered_district_user_array = users_array_sort.select {|user| user_specific_districts.include?(user.district_id)}
    filtered_district_and_watched_user_array = filtered_district_user_array.select{|user|
      unless already_watched_users.include?(user.id)
        user
      end }
    # cut_off_users_array = filtered_district_and_watched_user_array[0..10]
  end

  #returns all candidates as users
  def candidates_users
    candidates_collection = Candidate.all
    candidates_users_collection = candidates_collection.map {|candidate| candidate.user}
  end

  #top candidate suggestions for a specific user
  def home_login_candidates_to_endorse #FL: this one might not be not working yet
    candidates_array = candidates_users.map {|candidate| candidate}
    candidates_array_sort = candidates_array.sort_by {|candidate| candidate.users_score}
    filtered_district_candidate_array = candidates_array_sort.select {|candidate| user_specific_districts.include?(candidate.district_id)}
    filtered_district_and_watched_candidate_array = filtered_district_candidate_array.select{|candidate|
      unless already_watched_users.include?(candidate.id)
        candidate
      end }
    # cut_off_candidate_array = filtered_district_and_watched_candidate_array[0..10]
  end

#Profile page:
#--------------------------
  # def self.twitter_profile_name
  #   Twitteruser.find_by(user_id: session[:current_user_id]).name
  # end

  #watched users for a specific profile
  def profile_watched_users
    watched_organizations = self.watchings.map { |watching| watching.organization }
    watched_users = watched_organizations.compact.map { |organization| organization.user }
    watched_users_twitter = watched_users.compact.map { |user| user.twitteruser }
    watched_users_twitter.compact
    #not sorted yet, nor any limit
  end

  #watched endorsed users (candidates) for a specific profile
  def profile_endorsed_candidates
    endorsed_users = self.endorsements.map { |endorsement| endorsement }
    endorsed_candidates = endorsed_users.map { |endorsement| endorsement.candidate }
    endorsed_candidate_users = endorsed_candidates.map { |candidate| candidate.user }
    endorsed_users_twitter = endorsed_candidate_users.map { |user| user.twitteruser }
    #not sorted yet, nor any imit
  end

#Report card page:
#--------------------------

  #report card information
  def report_card
    self.district.add_parents.map do |district|
      { district: district,
        offices: district.rc_offices(self)
      }
    end
  end

  #checks that the listed candidates are only those candidates that are also endorsed by people i am watching
  def check_candidate(passed_candidate)

    watched_organizations = self.watchings.map { |watching| watching.organization }
    watched_users = watched_organizations.compact.map { |organization| organization.user }

    p "pass first call"
    return false if watched_users.count == 0

    watched_user_endorsements = watched_users.map { |user| user.endorsements }.flatten
    acceptable_candidates = watched_user_endorsements.map { |endorsement| endorsement.candidate }
    acceptable_users = acceptable_candidates.compact.map { |candidate| candidate.user }

    p "pass second call"
    return false if acceptable_users.count == 0

    p "passed_candidate: #{passed_candidate}"
    p "passed_candidate.user: #{passed_candidate.user}"
    if acceptable_users.include?(passed_candidate.user)
      return passed_candidate.user
    else
      return false
    end
  end

end

