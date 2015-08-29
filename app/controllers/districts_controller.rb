class DistrictsController < ApplicationController

  def report
    @districts = District.find(params[:district_id]).add_parents
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
