require 'spec_helper'

describe PairingDetail do

  before(:each) do
    @pair1_id = Factory(:employee_detail)
    @pair2_id = Factory(:employee_detail, :name => Factory.next(:name))

    @pairing_detail = @pair1_id.pairing_details.build(:pair2_id => @pair2_id)
  end
                                        ``
  it "should create a new instance given valid attributes" do
    @pairing_detail.save!
  end
end