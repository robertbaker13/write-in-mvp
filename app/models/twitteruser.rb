class Twitteruser < ActiveRecord::Base
  belongs_to :user

  def self.create_or_update(auth)
    twitteruser = Twitteruser.find_by(uid: auth["uid"]) || Twitteruser.new(uid: auth["uid"])
    twitteruser.nickname = auth["info"]["nickname"]
    twitteruser.name = auth["info"]["name"]
    twitteruser.location = auth["info"]["location"] || nil
    twitteruser.image = auth["info"]["image"] || nil
    twitteruser.description = auth["info"]["description"] || nil
    twitteruser.website = auth["info"]["urls"]["Website"]
    twitteruser.twitter = auth["info"]["urls"]["Twitter"]
    twitteruser.token = auth["credentials"]["token"]
    twitteruser.save
    twitteruser.organize!
    twitteruser
  end

  def organize!
    user = User.find_by(uid: self.uid)
    p "user: #{user}"
    p user.organization || Organization.create(user: user)
  end

  def larger_image
    self.image.gsub(/_normal/,"")
  end


end
