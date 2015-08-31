class Organization < ActiveRecord::Base
  belongs_to :user
  has_many :watchings

  def self.create_or_update(user)
    Organization.find_by(user: user) || Organization.create(user: user)
  end
end
