class District < ActiveRecord::Base
  has_many :children, class_name: "District",
                      foreign_key: "parent_id"
  belongs_to :parent, class_name: "District",
                      foreign_key: "parent_id"
  has_many :users
  has_many :offices

  def add_parents
    if self.parent == nil
      return District.where(id: self.id)
    else
      return self.parent.add_parents + District.where(id: self.id)
    end
  end

end
