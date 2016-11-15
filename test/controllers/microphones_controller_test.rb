require 'test_helper'

class MicrophonesControllerTest < ActionController::TestCase
  setup do
    @microphone = microphones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microphones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microphone" do
    assert_difference('Microphone.count') do
      post :create, microphone: { make: @microphone.make, serial: @microphone.serial }
    end

    assert_redirected_to microphone_path(assigns(:microphone))
  end

  test "should show microphone" do
    get :show, id: @microphone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microphone
    assert_response :success
  end

  test "should update microphone" do
    patch :update, id: @microphone, microphone: { make: @microphone.make, serial: @microphone.serial }
    assert_redirected_to microphone_path(assigns(:microphone))
  end

  test "should destroy microphone" do
    assert_difference('Microphone.count', -1) do
      delete :destroy, id: @microphone
    end

    assert_redirected_to microphones_path
  end
end
