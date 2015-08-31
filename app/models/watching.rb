class Watching < ActiveRecord::Base
    belongs_to :user
    belongs_to :organization

  def self.find_or_create(args)
    organization = args.fetch(:organization)
    user = args.fetch(:user)
    Watching.where(user: user).find_by(organization: organization) || Watching.create(user: user, organization: organization)
  end

end
