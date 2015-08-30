class User < ActiveRecord::Base
  belongs_to :district
  has_many :candidates
  has_many :endorsements

  has_one :organization
  has_many :watchings


  def home_info
    #one object which we access in the few
    User.find(id).district.add_parents.map { |district| {district => Office.where(district: district)} }

  end





  def profile_info
    watched_accounts = current_user.watchings.map { |watching|  }
  end


  # @user = User.find(params[:id])
  # @watched_accounts = @user.watchings.map{ |watching| watching.subject }
  # @endorsed_candidates = @user.endorsements.map{ |endorsement| endorsement.candidate }
  # @watchers = Watching.where(subject: self).map { |watching| watching.observer }


end

