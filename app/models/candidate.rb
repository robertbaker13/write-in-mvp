class Candidate < ActiveRecord::Base
  belongs_to :office
  belongs_to :user
  has_many :endorsements

  def candidates.sort_by_compatibility_with(user)
    candidates.map{|candidate| }
  end

end
