class Endorsement < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :user

  def pertains_to_current_user(current_user)

  end

end
