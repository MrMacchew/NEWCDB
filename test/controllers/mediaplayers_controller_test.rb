require 'test_helper'

class MediaplayersControllerTest < ActionController::TestCase
  setup do
    @mediaplayer = mediaplayers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mediaplayers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mediaplayer" do
    assert_difference('Mediaplayer.count') do
      post :create, mediaplayer: { make: @mediaplayer.make, serial: @mediaplayer.serial, type: @mediaplayer.type }
    end

    assert_redirected_to mediaplayer_path(assigns(:mediaplayer))
  end

  test "should show mediaplayer" do
    get :show, id: @mediaplayer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mediaplayer
    assert_response :success
  end

  test "should update mediaplayer" do
    patch :update, id: @mediaplayer, mediaplayer: { make: @mediaplayer.make, serial: @mediaplayer.serial, type: @mediaplayer.type }
    assert_redirected_to mediaplayer_path(assigns(:mediaplayer))
  end

  test "should destroy mediaplayer" do
    assert_difference('Mediaplayer.count', -1) do
      delete :destroy, id: @mediaplayer
    end

    assert_redirected_to mediaplayers_path
  end
end
