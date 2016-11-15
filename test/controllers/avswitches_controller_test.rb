require 'test_helper'

class AvswitchesControllerTest < ActionController::TestCase
  setup do
    @avswitch = avswitches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avswitches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avswitch" do
    assert_difference('Avswitch.count') do
      post :create, avswitch: { mac: @avswitch.mac, model: @avswitch.model, serial: @avswitch.serial }
    end

    assert_redirected_to avswitch_path(assigns(:avswitch))
  end

  test "should show avswitch" do
    get :show, id: @avswitch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @avswitch
    assert_response :success
  end

  test "should update avswitch" do
    patch :update, id: @avswitch, avswitch: { mac: @avswitch.mac, model: @avswitch.model, serial: @avswitch.serial }
    assert_redirected_to avswitch_path(assigns(:avswitch))
  end

  test "should destroy avswitch" do
    assert_difference('Avswitch.count', -1) do
      delete :destroy, id: @avswitch
    end

    assert_redirected_to avswitches_path
  end
end
