class Office < ActiveRecord::Base
  belongs_to :district
  has_many :candidates

  def rc_candidates(active_user)
    result = self.candidates.map do |candidate|
      { candidate: candidate, user: candidate.rc_user(active_user) }
    end
    result.select { |record| record[:user] }
  end

  # def candidates_for_specific_user(user)
  #   watched_organizations = user.watchings.map { |watching| watching.organization }
  #   watched_users = watched_organizations.map { |organization| organization.user }
  #   watched_endorsements = watched_users.map { |user| user.endorsements }.flatten
  #   watched_candidates = watched_endorsements.map { |endorsement| endorsement.candidate }
  #   candidates.select { |candidate| watched_candidates.include?(candidate) }


end
