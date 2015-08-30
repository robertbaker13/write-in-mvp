class Candidate < ActiveRecord::Base
  belongs_to :office
  belongs_to :user
  has_many :endorsements

  #checks user for a specific candidate
  def rc_user(active_user)
    p "self: #{self}"
    active_user.check_candidate(self.class)
  end
end
