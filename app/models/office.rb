class Office < ActiveRecord::Base
  belongs_to :district
  has_many :candidates

  def rc_candidates(active_user)
    result = self.candidates.map do |candidate|
      { candidate: candidate, user: candidate.rc_user(active_user) }
    end
    result.select { |record| record[:user] }
  end

  def rc_candidates(current_user)
    result = self.candidates.map { |candidate| [candidate, candidate.rc_endorsers, candidate.rc_score(current_user)] }
    result.select { |x| x[2] > 0 }.sort.reverse
  end



end
