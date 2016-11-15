require 'test_helper'

class InteractivekitsControllerTest < ActionController::TestCase
  setup do
    @interactivekit = interactivekits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interactivekits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interactivekit" do
    assert_difference('Interactivekit.count') do
      post :create, interactivekit: { serial: @interactivekit.serial }
    end

    assert_redirected_to interactivekit_path(assigns(:interactivekit))
  end

  test "should show interactivekit" do
    get :show, id: @interactivekit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interactivekit
    assert_response :success
  end

  test "should update interactivekit" do
    patch :update, id: @interactivekit, interactivekit: { serial: @interactivekit.serial }
    assert_redirected_to interactivekit_path(assigns(:interactivekit))
  end

  test "should destroy interactivekit" do
    assert_difference('Interactivekit.count', -1) do
      delete :destroy, id: @interactivekit
    end

    assert_redirected_to interactivekits_path
  end
end
