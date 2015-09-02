class Organization < ActiveRecord::Base
  belongs_to :user
  has_many :watchings

  def self.create_or_update(user)
    Organization.find_by(user: user) || Organization.create(user: user)
  end

  def self.relevant_data (current_user = nil) #class method or not?
  end

  def self.list_of_organizations (current_user= nil)
    user = current_user || User.all
    user.home_users_to_watch #currently does all the sorting and scoring
  end

  def self.sorted_list (current_user= nil)
  end

  def score
  end

  def self.list_of_orgs_endorsing_candidates(current_user= nil)
    user = current_user || User.all
    user.home_candidates_to_endorse
  end

  def self.list_of_watched_orgs(current_user= nil)
    user = current_user || User.all
    user.specific_watched_users
  end
end
