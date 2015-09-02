class Candidate < ActiveRecord::Base
  belongs_to :office
  belongs_to :user
  has_many :endorsements

  #checks user for a specific candidate
  def rc_user(active_user)
    p "self: #{self}"
    active_user.check_candidate(self.class)
  end

  def self.relevant_data (current_user = nil) #class method or not?
  end

  def self.list_of_candidates (current_user= nil)
    user = current_user || User.all
    user.home_candidates_to_endorse #currently does all the sorting and scoring
  end

  def self.sorted_list (current_user= nil)
  end

  def score
  end

  def self.list_of_cand_endorsed_by_org (current_user= nil)
    user = current_user || User.all
    user.specific_endorsed_candidates
  end

  def self.list_of_watched_orgs(current_user= nil)
    user = current_user || User.all
    user.specific_watched_users
  end

end
