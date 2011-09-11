require 'test_helper'

class PairingDetailsTest < ActiveSupport::TestCase


    before(:each) do
    @pair1_id = Factory(:employee_detail)
    @pair2_id = Factory(:employee_detail, :name =>'sonia')

    @pairing_details = @pair1_id.pairing_details.build(:pair2_id => @pair2_id.id)

    end

    it "should create a new instance given valid attributes" do
       @pairing_details.save!
    end

end
