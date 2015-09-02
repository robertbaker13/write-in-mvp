class TwitterusersController < ApplicationController

  def search
    @tusers = Twitteruser.search_db(params[:search_input])
    p '*'*100
    puts @tusers

    render @tusers.first
  end

end
