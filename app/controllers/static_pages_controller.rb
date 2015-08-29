class StaticPagesController < ApplicationController

  def report
    @districts = District.all
  end

end
