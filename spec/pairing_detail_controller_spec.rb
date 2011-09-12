require 'spec_helper'
require "pairing_detail"

describe PairingDetailController do

  describe "editing record"  do

    it "should be able to edit pairing count" do
      PairingDetail.should_receive(:delete_all).with(:pair1_id=>"3",:pair2_id=>"4")
      PairingDetail.should_receive(:delete_all).with(:pair1_id=>"4",:pair2_id=>"3")
      PairingDetail.should_receive(:create).with(:pair1_id=>"3",:pair2_id=>"4",:number_of_times_paired=>"6")
      PairingDetail.should_receive(:create).with(:pair1_id=>"4",:pair2_id=>"3",:number_of_times_paired=>"0")
      get :edit_record, :pair1=>"3", :pair2=>"4", :count=>"6"
      response.should be_success
    end

  end

  describe "generate matrix table" do

    it "should be able to create an 2D array with all counts" do
      pending
      PairingDetail.should_receive(:find).with(:all)
      EmployeeDetail.should_receive(:find).with(:all)
      get :generate_data_in_tabular_form
      response.should be_success
    end
  end

end