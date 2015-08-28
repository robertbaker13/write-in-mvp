class District < ActiveRecord::Base
  belongs_to: :parent, class_name: :user
end
