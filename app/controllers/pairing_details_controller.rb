class PairingDetailsController < ApplicationController

  def get_count
    id1=get_id_from_employee_details(params[:pair1_id])
    id2=get_id_from_employee_details(params[:pair2_id])
    @count=PairingDetails.find_by_pair1_id_and_pair2_id(id1,id2).number_of_times_paired

  end

  def get_id_from_employee_details(name)
     id=EmployeeDetails.find_by_name(name).id
    id
  end

end
