require 'test_helper'

class PairingDetailControllerTest < ActionController::TestCase

  describe "editing record"  do

    it "should be able to edit pairing count" do
      PairingDetail.should_receive(:delete_all).with(:pair1_id=>3,:pair2_id=>4)
      PairingDetail.should_receive(:create).with(:pair1_id=>3,:pair2_id=>4,:number_of_times_paired=>6)
      get :edit_record, :pair1=>3, :pair2=>4, :count=>6
      response.should be_success
    end

  end

end
