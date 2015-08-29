class DistrictsController < ApplicationController

  def report
    user = User.find_by(id: params[:user_id])
    @districts = user.district.add_parents
    @subjects = list_subjects_for(user)
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
