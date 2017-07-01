class MembersController < ApplicationController
  def destroy
    @place = Place.find(params[:place_id])
    @memeber = @place.members.find(params[:id])
    @memeber.destroy

    respond_to do |format|
      format.html { redirect_to place_path(@place) }
      format.xml  { head :ok }
    end
  end
end
