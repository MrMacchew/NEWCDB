require 'test_helper'

class MicreceiversControllerTest < ActionController::TestCase
  setup do
    @micreceiver = micreceivers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micreceivers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micreceiver" do
    assert_difference('Micreceiver.count') do
      post :create, micreceiver: { receiver: @micreceiver.receiver }
    end

    assert_redirected_to micreceiver_path(assigns(:micreceiver))
  end

  test "should show micreceiver" do
    get :show, id: @micreceiver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micreceiver
    assert_response :success
  end

  test "should update micreceiver" do
    patch :update, id: @micreceiver, micreceiver: { receiver: @micreceiver.receiver }
    assert_redirected_to micreceiver_path(assigns(:micreceiver))
  end

  test "should destroy micreceiver" do
    assert_difference('Micreceiver.count', -1) do
      delete :destroy, id: @micreceiver
    end

    assert_redirected_to micreceivers_path
  end
end
