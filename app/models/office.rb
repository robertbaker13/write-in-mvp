class Office < ActiveRecord::Base
  belongs_to :district
  has_many :candidates

  def rc_candidates(active_user)
    result = self.candidates.map do |candidate|
      { candidate: candidate, user: candidate.rc_user(active_user) }
    end
    result.select { |record| record.user }
  end

end
