
class PairingDetailController < ApplicationController

  def edit_record
    PairingDetail.edit_count(params[:pair1],params[:pair2],params[:count])
    flash[:notice]="Successfully edited the pairing count"
  end

  def generate_data_in_tabular_form
    @count=PairingDetail.generate_counts_in_hash
    #PairingDetail.get_total_count(@count)
  end

end
