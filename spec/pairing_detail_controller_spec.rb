require 'spec_helper'
require "pairing_detail"

describe PairingDetailController do
  before(:each) do
    @counts=Hash.new

    @pair1=EmployeeDetail.new(:id=>1)
    @pair2=EmployeeDetail.new(:id=>2)
  end

  describe "editing record"  do

    it "should be able to edit pairing count" do
      PairingDetail.should_receive(:edit_count).with(@pair1.id,@pair2.id,"3")
      get :edit_record, :pair1=>@pair1.id, :pair2=>@pair2.id, :count=>"3"
      response.should be_success
      flash[:notice].should=="Successfully edited the pairing count"
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