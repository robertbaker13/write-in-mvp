class User < ActiveRecord::Base
  belongs_to :district
  has_many :candidates
  has_many :endorsements

  has_one :organization
  has_many :watchings
  has_one :twitter

  #top users to watch in user specific district calculation
  def watched_users_score
    endorsements = self.endorsements
    followers = self.twitter.followers
    if followers == false
    sum_score = endorsements.compact.count
    else
    sum_score = endorsements.compact.count + followers.compact.count
    end
  end

  #checks that the listed users to watch are only those users that are not already endorsed by the viewer
  def check_watched_users
  end


  #top watch users suggestions for a specific user
  def home_login_users_to_watch
    districts_for_user = self.district.add_parents
    user_score = {}
    users = User.all
    test_array_of_scores = users.map { |user| user.users_score}
  end

  def candidates_score
  end

  def check_candidates
  end

  #top candidate suggestions for a specific user
  def home_login_candidates_to_endorse

  end

  #watched users for a specific profile
  def profile_watched_users #not sorted yet, nor limit
    watched_organizations = self.watchings.map { |watching| watching.organization }
    watched_users = watched_organizations.compact.map { |organization| organization.user }
    watched_users_twitter = watched_users.compact.map { |user| user.twitter }
    watched_users_twitter.compact
  end

  #watched endorsed users (candidates) for a specific profile
  def profile_endorsed_candidates #not sorted yet, nor limit
    endorsed_users = self.endorsements.map { |endorsement| endorsement }
    endorsed_candidates = endorsed_users.map { |endorsement| endorsement.candidate }
    endorsed_candidate_users = endorsed_candidates.map { |candidate| candidate.user }
    endorsed_users_twitter = endorsed_candidate_users.map { |user| user.twitter }
  end

  #report card information
  def report_card
    self.district.add_parents.map do |district|
      { district: district,
        offices: district.rc_offices(self)
      }
    end
  end

  #watched organizations of user profile
  # def profile_info
  #   watched_accounts = current_user.watchings.map { |watching|  }
  # end

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

