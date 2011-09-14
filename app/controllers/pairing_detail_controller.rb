
class PairingDetailController < ApplicationController

  def edit_record
    PairingDetail.delete_all(:pair1_id=>params[:pair1], :pair2_id=>params[:pair2])
    PairingDetail.create(:pair1_id=>params[:pair1],:pair2_id=>params[:pair2],:number_of_times_paired=>params[:count])

    if(params[:pair1]!=params[:pair2])
       PairingDetail.delete_all(:pair1_id=>params[:pair2], :pair2_id=>params[:pair1])
    end
        #render :template=>'view_table'
  end

  def generate_data_in_tabular_form
    @count=PairingDetail.generate_counts_in_hash
    PairingDetail.get_total_count(@count)
  end

end
