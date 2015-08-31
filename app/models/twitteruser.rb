class Twitteruser < ActiveRecord::Base
  belongs_to :user

  # def self.from_omniauth(auth)
  #   where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  # end

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
    twitteruser
  end

  def larger_image
    self.image.gsub(/_normal/,"")
  end

  # def self.create_from_omniauth(auth)
  #   create! do |twitter|
  #     twitter.uid = auth["uid"]
  #     twitter.nickname = auth["info"]["nickname"]
  #     twitter.name = auth["info"]["name"]
  #     twitter.location = auth["info"]["location"] || nil
  #     twitter.image = auth["info"]["image"] || nil
  #     twitter.description = auth["info"]["description"] || nil
  #     twitter.website = auth["info"]["urls"]["Website"]
  #     twitter.twitter = auth["info"]["urls"]["Twitter"]
  #     twitter.token = auth["credentials"]["token"]
  #     # secret might be in session
  #     # twitter.secret = auth["credentials"]["secret"]
  #   end
  # end

  # def self.update_from_omniauth(auth)
  #   create! do |twitter|
  #     twitter.uid = auth["uid"]
  #     twitter.nickname = auth["info"]["nickname"]
  #     twitter.name = auth["info"]["name"]
  #     twitter.location = auth["info"]["location"] || nil
  #     twitter.image = auth["info"]["image"] || nil
  #     twitter.description = auth["info"]["description"] || nil
  #     twitter.website = auth["info"]["urls"]["Website"]
  #     twitter.twitter = auth["info"]["urls"]["Twitter"]
  #     twitter.token = auth["credentials"]["token"]
  #     # secret might be in session
  #     # twitter.secret = auth["credentials"]["secret"]
  #   end
  # end
end
