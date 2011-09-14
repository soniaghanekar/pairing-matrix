
class PairingDetailController < ApplicationController
  include PairingDetailHelper

  def edit_record
    PairingDetail.delete_all(:pair1_id=>params[:pair1], :pair2_id=>params[:pair2])
    PairingDetail.delete_all(:pair1_id=>params[:pair2], :pair2_id=>params[:pair1])
    PairingDetail.create(:pair1_id=>params[:pair1],:pair2_id=>params[:pair2],:number_of_times_paired=>params[:count])
    PairingDetail.create(:pair1_id=>params[:pair2],:pair2_id=>params[:pair1],:number_of_times_paired=>"0")

        #render :template=>'view_table'
  end

end
