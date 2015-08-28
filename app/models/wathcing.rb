class Wathcing < ActiveRecord::Base
  belongs_to: :subject, class_name: :user
  belongs_to: :observer, class_name: :user
end
