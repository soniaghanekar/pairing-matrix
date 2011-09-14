require 'spec_helper'

describe PairingDetail do

  before(:each) do
    @employee=EmployeeDetail.new(:id=>1)
        puts "ankur"
    @pair=EmployeeDetail.new(:id=>2)
    @pair1_id = @employee.id
    @pair2_id = @pair.id


    @pairing_detail1 = PairingDetail.create(:pair1_id=>@pair1_id, :pair2_id=>@pair2_id, :number_of_times_paired=> 5)
    @pairing_detail2 = PairingDetail.create(:pair1_id=>@pair2_id, :pair2_id=>@pair1_id, :number_of_times_paired=> 2)
  end
                                        ``
  it "should create a new instance given valid attributes" do
    @pairing_detail1.save!
  end

  it "should generate pairing counts in a hash" do
  hash=PairingDetail.generate_counts_in_hash
  hash[@pair1_id][@pair2_id].should==5
  end

  it "should generate the total count in the hash"
  hash=PairingDetail.generate_counts_in_hash
  PairingDetail.get_total_count(hash)
  #hash[@pair1_id][@pair2_id].should==7
  #hash[@pair2_id][@pair1_id].should==7
end