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

PairingDetails.create(:pair1_id=>1,:pair2_id=>3,:number_of_times_paired=>3)
PairingDetails.create(:pair1_id=>1,:pair2_id=>2,:number_of_times_paired=>2)
PairingDetails.create(:pair1_id=>1,:pair2_id=>4,:number_of_times_paired=>4)
PairingDetails.create(:pair1_id=>2,:pair2_id=>3,:number_of_times_paired=>3)
PairingDetails.create(:pair1_id=>2,:pair2_id=>4,:number_of_times_paired=>4)
PairingDetails.create(:pair1_id=>3,:pair2_id=>4,:number_of_times_paired=>4)
