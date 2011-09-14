module PairingDetailHelper

  def generate_data_in_tabular_form
       @count=Hash.new
       EmployeeDetail.all.each { |employee|
       @count[employee.id]=Hash.new
       @count[employee.id].default=0
         employee.pairing_detail.all.each { |pair|
            @count[employee.id][pair.pair2_id]=pair.number_of_times_paired
         }
       }

       PairingDetail.get_total_count(@count)
    end

end
