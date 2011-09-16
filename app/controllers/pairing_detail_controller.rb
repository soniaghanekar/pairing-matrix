
class PairingDetailController < ApplicationController

  def edit_record
    PairingDetail.edit_count(params[:pair1],params[:pair2],params[:count])
    flash[:notice]="Successfully edited the pairing count"
    render :template => 'home/index'
  end

  def generate_data_in_tabular_form
    @count=PairingDetail.generate_counts_in_hash
  end

end
