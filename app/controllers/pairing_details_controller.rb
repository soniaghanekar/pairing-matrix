class PairingDetailsController < ApplicationController

  def get_count
    emp_id1=get_id_from_employee_details(params[:emp_details.id])
    #emp_id2=get_id_from_employee_details(params[:employee_details.name2])
    @count=PairingDetails.find_by_pair1_id_and_pair2_id(emp_id1,2).number_of_times_paired

  end

  def get_id_from_employee_details(name)
     id=EmployeeDetails.find_by_name(name).id
    id
  end

  def get_total_count(id1,id2)
    count1=PairingDetails.find_by_pair1_id_and_pair2_id(id1,id2).number_of_times_paired
    count2=PairingDetails.find_by_pair1_id_and_pair2_id(id2,id1).number_of_times_paired
    count=count1+count2
    count
  end

  def generate_data_in_tabular_form
     pairing_details=PairingDetails.find(:all)
     max_row, max_col = pairing_details.size+1, pairing_details.size+1
     @count = []
     max_row.times { @count << Array.new( max_col ) }

     employee_details=EmployeeDetails.find(:all)
     (0..employee_details.size-1).each do |i|
       @count[0][employee_details[i].id]=employee_details[i].name
       @count[employee_details[i].id][0]=employee_details[i].name
     end

     (0..pairing_details.size-1).each do |i|
         pair1=pairing_details[i].pair1_id
         pair2=pairing_details[i].pair2_id
         pairing_count=get_total_count(pair1,pair2)
         @count[pair1][pair2]=pairing_count
         @count[pair2][pair1]=pairing_count
     end
  end
end
