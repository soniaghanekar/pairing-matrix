require 'test_helper'

class PairingMembersControllerTest < ActionController::TestCase
  setup do
    @pairing_member = pairing_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pairing_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pairing_member" do
    assert_difference('PairingMember.count') do
      post :create, :pairing_member => @pairing_member.attributes
    end

    assert_redirected_to pairing_member_path(assigns(:pairing_member))
  end

  test "should show pairing_member" do
    get :show, :id => @pairing_member.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pairing_member.to_param
    assert_response :success
  end

  test "should update pairing_member" do
    put :update, :id => @pairing_member.to_param, :pairing_member => @pairing_member.attributes
    assert_redirected_to pairing_member_path(assigns(:pairing_member))
  end

  test "should destroy pairing_member" do
    assert_difference('PairingMember.count', -1) do
      delete :destroy, :id => @pairing_member.to_param
    end

    assert_redirected_to pairing_members_path
  end
end
