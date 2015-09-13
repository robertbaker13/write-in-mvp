class Twitteruser < ActiveRecord::Base
  belongs_to :user

  fuzzily_searchable :name

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
    twitteruser.secret = auth["credentials"]["secret"]
    twitteruser.save
    twitteruser
  end

  def endorsements #Fl: do not think that we need this method!
    self.user.endorsements
  end

  def larger_image
    self.image.gsub(/_normal/,"")
  end

  def self.search_db(input)
      find_by_fuzzy_name(input, :limit => 5)
  end

  def twitter
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_KEY']
      config.consumer_secret     = ENV['TWITTER_SECRET']
      config.access_token        = token
      config.access_token_secret = secret
    end
    client
  end

end
