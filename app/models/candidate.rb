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

  def rc_endorsers(current_user)
    result = self.endorsements
    result.map { |endorsement| endorsement.user.twitteruser }.compact
    # sort this later!
  end

  def rc_score(current_user) #this represents the number of accounts I watch who endorse this candidate
    watchings = Watching.where(user: current_user).select do |watching|
      watching.organization.user.endorsements.includes?(self)
    end
    watchings.length
  end

  def self.list_of_cand_endorsed_by_org (current_user= nil)
    user = current_user || User.all
    user.specific_endorsed_candidates
  end

end
