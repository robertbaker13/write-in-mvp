class User < ActiveRecord::Base
  belongs_to :district
  has_many :candidates
  has_many :endorsements

  has_one :organization
  has_many :watchings


  def add_watch (user)
      Watching.create(observer: self, subject: user)
  end

end

