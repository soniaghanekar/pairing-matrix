# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

EmployeeDetails.find_or_create_by_name("sonia")
EmployeeDetails.find_or_create_by_name("wang chao")
EmployeeDetails.find_or_create_by_name("geet")
EmployeeDetails.find_or_create_by_name("sneha")

PairingDetails.find_or_create_by_pair1_id_and_pair2_id(1,1,:number_of_times_paired=>0)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(1,2,:number_of_times_paired=>2)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(1,3,:number_of_times_paired=>3)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(1,4,:number_of_times_paired=>4)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(2,1,:number_of_times_paired=>2)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(2,2,:number_of_times_paired=>0)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(2,3,:number_of_times_paired=>3)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(2,4,:number_of_times_paired=>4)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(3,1,:number_of_times_paired=>3)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(3,2,:number_of_times_paired=>3)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(3,3,:number_of_times_paired=>0)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(3,4,:number_of_times_paired=>4)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(4,1,:number_of_times_paired=>4)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(4,2,:number_of_times_paired=>4)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(4,3,:number_of_times_paired=>4)
PairingDetails.find_or_create_by_pair1_id_and_pair2_id(4,4,:number_of_times_paired=>0)
