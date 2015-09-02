class TwitterusersController < ApplicationController

  def search
    @results = Twitteruser.search_db(params[:search_input])

    render @results
  end

end
