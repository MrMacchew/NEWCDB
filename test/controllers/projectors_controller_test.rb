require 'test_helper'

class ProjectorsControllerTest < ActionController::TestCase
  setup do
    @projector = projectors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projectors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projector" do
    assert_difference('Projector.count') do
      post :create, projector: { mac: @projector.mac, make: @projector.make, model: @projector.model, serial: @projector.serial }
    end

    assert_redirected_to projector_path(assigns(:projector))
  end

  test "should show projector" do
    get :show, id: @projector
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projector
    assert_response :success
  end

  test "should update projector" do
    patch :update, id: @projector, projector: { mac: @projector.mac, make: @projector.make, model: @projector.model, serial: @projector.serial }
    assert_redirected_to projector_path(assigns(:projector))
  end

  test "should destroy projector" do
    assert_difference('Projector.count', -1) do
      delete :destroy, id: @projector
    end

    assert_redirected_to projectors_path
  end
end
