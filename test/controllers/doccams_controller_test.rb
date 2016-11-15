require 'test_helper'

class DoccamsControllerTest < ActionController::TestCase
  setup do
    @doccam = doccams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doccams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doccam" do
    assert_difference('Doccam.count') do
      post :create, doccam: { make: @doccam.make, model: @doccam.model, serial: @doccam.serial, wtag: @doccam.wtag }
    end

    assert_redirected_to doccam_path(assigns(:doccam))
  end

  test "should show doccam" do
    get :show, id: @doccam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doccam
    assert_response :success
  end

  test "should update doccam" do
    patch :update, id: @doccam, doccam: { make: @doccam.make, model: @doccam.model, serial: @doccam.serial, wtag: @doccam.wtag }
    assert_redirected_to doccam_path(assigns(:doccam))
  end

  test "should destroy doccam" do
    assert_difference('Doccam.count', -1) do
      delete :destroy, id: @doccam
    end

    assert_redirected_to doccams_path
  end
end
