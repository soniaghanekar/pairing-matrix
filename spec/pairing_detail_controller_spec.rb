require 'spec_helper'
require "pairing_detail"

describe PairingDetailController do
  before(:each) do
    @counts=Hash.new
  end

  describe "editing record"  do

    it "should be able to edit pairing count" do
      PairingDetail.should_receive(:delete_all).with(:pair1_id=>"3",:pair2_id=>"4")
      PairingDetail.should_receive(:delete_all).with(:pair1_id=>"4",:pair2_id=>"3")
      PairingDetail.should_receive(:create).with(:pair1_id=>"3",:pair2_id=>"4",:number_of_times_paired=>"6")
      get :edit_record, :pair1=>"3", :pair2=>"4", :count=>"6"
      response.should be_success
    end

  end

  describe "generate matrix table" do

    it "should generate a hash with all pairing counts" do
      PairingDetail.should_receive(:generate_counts_in_hash).and_return(@counts)
      PairingDetail.should_receive(:get_total_count).with(@counts)
      get :generate_data_in_tabular_form
      response.should be_success
    end

  end

end