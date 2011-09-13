class PairingDetailController < ApplicationController

  def edit_record
    PairingDetail.delete_all(:pair1_id=>params[:pair1], :pair2_id=>params[:pair2])
    PairingDetail.delete_all(:pair1_id=>params[:pair2], :pair2_id=>params[:pair1])
    PairingDetail.create(:pair1_id=>params[:pair1],:pair2_id=>params[:pair2],:number_of_times_paired=>params[:count])
    PairingDetail.create(:pair1_id=>params[:pair2],:pair2_id=>params[:pair1],:number_of_times_paired=>"0")

        #render :template=>'view_table'
  end

  def get_total_count(id1,id2)
          if(id1==id2)
            count=PairingDetail.find_by_pair1_id_and_pair2_id(id1,id2).number_of_times_paired
            count
          else
            count1=PairingDetail.find_by_pair1_id_and_pair2_id(id1,id2).number_of_times_paired
            count2=PairingDetail.find_by_pair1_id_and_pair2_id(id2,id1).number_of_times_paired
            count=count1+count2
            count
          end


      end


  def generate_data_in_tabular_form
     @count=Hash.new
     EmployeeDetail.all.each { |employee|
     @count[employee.id]=Hash.new
       employee.pairing_detail.all.each { |pair|
          @count[employee.id][pair.pair2_id]=pair.number_of_times_paired
       }
     }

  end


end
