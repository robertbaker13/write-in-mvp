class User < ActiveRecord::Base
  belongs_to :district
  has_many :candidates

  has_many :observers, :class_name => "Watching", :foreign_key => "observer_id"
  has_many :subjects, :class_name => "Watching", :foreign_key => "subject_id"

  has_many :endorsers, :class_name => "Endorsement", :foreign_key => "endorser_id"
  has_many :endorsees, :class_name => "Endorsement", :foreign_key => "endorsee_id"


  # Refractor later, and User can watch other user multiple time, need to fix
  def add_watch (user)
      Watching.create(observer: self, subject: user)
  end
end

