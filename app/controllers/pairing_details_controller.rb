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

end
