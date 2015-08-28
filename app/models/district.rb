class District < ActiveRecord::Base
  has_many :children, class_name: "District",
                      foreign_key: "parent_id"
  # Need to retrieving decendent district
  # has_many :children, through: :children
  belongs_to :parent, class_name: "District",
                      foreign_key: "parent_id"
  has_many :users
  has_many :offices
end
