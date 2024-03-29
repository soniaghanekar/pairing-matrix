require 'spec_helper'

describe PairingDetail do

  before(:each) do
    @employee=EmployeeDetail.new(:id=>1)
    @pair=EmployeeDetail.new(:id=>2)
    @pair1_id = @employee.id
    @pair2_id = @pair.id

    @pairing_detail1 = PairingDetail.create(:pair1=>@employee, :pair2=>@pair, :number_of_times_paired=> 5)
    @pairing_detail2 = PairingDetail.create(:pair1=>@pair, :pair2=>@employee, :number_of_times_paired=> 2)
  end

  it "should create a new instance given valid attributes" do
    @pairing_detail1.save!
  end

  describe "edit pairing counts" do

    it "should edit count for given pair" do
      PairingDetail.edit_count(@pair1_id,@pair2_id,3)
      EmployeeDetail.find(@pair1_id).pairing_detail.find_by_pair2_id(@pair2_id).number_of_times_paired.should ==3
      EmployeeDetail.find(@pair2_id).pairing_detail.find_by_pair2_id(@pair1_id).number_of_times_paired.should ==0
    end
  end

  describe "generate counts" do

    it "should generate pairing counts in a hash" do
      hash=PairingDetail.generate_counts_in_hash
      hash[@pair1_id][@pair2_id].should==5
      hash[@pair2_id][@pair1_id].should==5
    end
  end
end