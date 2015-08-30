class User < ActiveRecord::Base
  belongs_to :district
  has_many :candidates
  has_many :endorsements

  has_one :organization
  has_many :watchings
  has_one :twitter


  def districts
    self.districts.add_parents
  end

  def report_card_data
    [
      {
        district_name: USA,
        offices: {
          office: "President",
          candidates: {}

        },
      }
      district_name: CA,
      offices: {
        office: "Senator",
        candidates: {}
        }
      district: SF,
      offices: {
        office: "Mayor",
        candidates: {}
      }
    ]
  end


  # def offices_by_district_for_specific_user(user)
  #   self.district.add_parents.map do |district|
  #     {
  #       district: district,
  #       offices: Office.where(district: district)
  #     }
  #   end
  # end



  def profile_info
    watched_accounts = current_user.watchings.map { |watching|  }
  end


  # @user = User.find(params[:id])
  # @watched_accounts = @user.watchings.map{ |watching| watching.subject }
  # @endorsed_candidates = @user.endorsements.map{ |endorsement| endorsement.candidate }
  # @watchers = Watching.where(subject: self).map { |watching| watching.observer }


end

