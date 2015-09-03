class Twitteruser < ActiveRecord::Base
  belongs_to :user

  fuzzily_searchable :name

  def self.create_or_update(auth)
    # raise auth.to_yaml
    twitteruser = Twitteruser.find_by(uid: auth["uid"]) || Twitteruser.new(uid: auth["uid"])
    twitteruser.nickname = auth["info"]["nickname"]
    twitteruser.name = auth["info"]["name"]
    twitteruser.location = auth["info"]["location"] || nil
    twitteruser.image = auth["info"]["image"] || nil
    twitteruser.description = auth["info"]["description"] || nil
    twitteruser.website = auth["info"]["urls"]["Website"]
    twitteruser.twitter = auth["info"]["urls"]["Twitter"]
    twitteruser.token = auth["credentials"]["token"]
    twitteruser.token = auth["credentials"]["secret"]
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


end
