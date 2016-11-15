require 'test_helper'

class TvsControllerTest < ActionController::TestCase
  setup do
    @tv = tvs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tvs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tv" do
    assert_difference('Tv.count') do
      post :create, tv: { mac: @tv.mac, make: @tv.make, model: @tv.model, serial: @tv.serial, tag: @tv.tag }
    end

    assert_redirected_to tv_path(assigns(:tv))
  end

  test "should show tv" do
    get :show, id: @tv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tv
    assert_response :success
  end

  test "should update tv" do
    patch :update, id: @tv, tv: { mac: @tv.mac, make: @tv.make, model: @tv.model, serial: @tv.serial, tag: @tv.tag }
    assert_redirected_to tv_path(assigns(:tv))
  end

  test "should destroy tv" do
    assert_difference('Tv.count', -1) do
      delete :destroy, id: @tv
    end

    assert_redirected_to tvs_path
  end
end
