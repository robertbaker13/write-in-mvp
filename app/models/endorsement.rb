class Endorsement < ActiveRecord::Base
  belongs_to: :endorse, class_name: :user
end
