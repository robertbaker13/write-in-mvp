class Candidate < ActiveRecord::Base
  belongs_to :office
  belongs_to :user
  has_many :endorsements

end
