class TwitterusersController < ApplicationController

  def search
    @tusers = Twitteruser.search_db(params[:search_input])

    render @tusers.first
  end

end
