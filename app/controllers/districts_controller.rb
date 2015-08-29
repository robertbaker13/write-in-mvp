class DistrictsController < ApplicationController

  def report
    @user = User.find(params[:id])
    @watched_accounts = @user.watchings.map{ |watching| watching.subject }
    @endorsed_candidates = @user.endorsements.map{ |endorsement| endorsement.candidate }
    @watchers = Watching.where(subject: self).map { |watching| watching.observer }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_district
      @district = District.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def district_params
      params.require(:district).permit(:name, :parent_id)
    end
end
