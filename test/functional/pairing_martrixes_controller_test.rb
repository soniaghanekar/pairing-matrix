require 'test_helper'

class PairingMartrixesControllerTest < ActionController::TestCase
  setup do
    @pairing_martrix = pairing_martrixes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pairing_martrixes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pairing_martrix" do
    assert_difference('PairingMartrix.count') do
      post :create, :pairing_martrix => @pairing_martrix.attributes
    end

    assert_redirected_to pairing_martrix_path(assigns(:pairing_martrix))
  end

  test "should show pairing_martrix" do
    get :show, :id => @pairing_martrix.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pairing_martrix.to_param
    assert_response :success
  end

  test "should update pairing_martrix" do
    put :update, :id => @pairing_martrix.to_param, :pairing_martrix => @pairing_martrix.attributes
    assert_redirected_to pairing_martrix_path(assigns(:pairing_martrix))
  end

  test "should destroy pairing_martrix" do
    assert_difference('PairingMartrix.count', -1) do
      delete :destroy, :id => @pairing_martrix.to_param
    end

    assert_redirected_to pairing_martrixes_path
  end
end
