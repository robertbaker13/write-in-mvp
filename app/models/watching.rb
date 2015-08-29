class Watching < ActiveRecord::Base
    belongs_to :observer, class_name: "User"
    belongs_to :subject, class_name: "User"

    def list_subjects_for(user)
      user.subjects.map do |person|
        person.subject
      end
    end

end
