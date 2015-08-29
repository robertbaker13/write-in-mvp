class User < ActiveRecord::Base
  belongs_to :district
  has_many :candidates

  has_many :observers, :class_name => "Watching", :foreign_key => "observer_id"
  has_many :subjects, :class_name => "Watching", :foreign_key => "subject_id"

  # Refractor later, and User can watch other user multiple time, need to fix
  def add_watch (user)
      Watching.create(observer: self, subject: user)
  end

  # Temporary filler method
  def current_user
    current_user = User.first
  end

end

