class PairingDetailsController < ApplicationController

  def get_count
    @PairingDetails=PairingDetails.find_by_pair1_id_and_pair2_id(params[:pair1_id],params[:pair2_id])
    @count=@PairingDetails.number_of_times_paired
    #render :template=> 'get/count'
  end

end
