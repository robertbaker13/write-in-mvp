class DistrictsController < ApplicationController

  def update
    district_set = District.find_by(name: params[:user][:populate_district])
    current_user.district = district_set
    current_user.save
    redirect_to show_url
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
