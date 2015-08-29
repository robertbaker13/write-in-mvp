class District < ActiveRecord::Base
  has_many :children, class_name: "District",
                      foreign_key: "parent_id"
  # Need to retrieving decendent district
  # has_many :children, through: :children
  belongs_to :parent, class_name: "District",
                      foreign_key: "parent_id"
  has_many :users
  has_many :offices

  districts = []
  def add_parents
    # basecase - if district has no parents
    if self.parent == nil
      return District.where(id: self.id)
    else
      return self.parent.add_parents + District.where(id: self.id)
    end
  end

result = []
Watching.where(observer: self).each do |watching|
  result << Endorsement.where(user: User

    watching.subject)
end

# self.subjects.endorsements.group(:candidate).count
end
