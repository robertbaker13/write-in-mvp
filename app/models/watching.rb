class Watching < ActiveRecord::Base
    belongs_to :observer, class_name: "User"
    belongs_to :subject, class_name: "User"

end
