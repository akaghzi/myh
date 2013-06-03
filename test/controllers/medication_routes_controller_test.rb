require 'test_helper'

class MedicationRoutesControllerTest < ActionController::TestCase
  setup do
    @medication_route = medication_routes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medication_routes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medication_route" do
    assert_difference('MedicationRoute.count') do
      post :create, medication_route: { name: @medication_route.name }
    end

    assert_redirected_to medication_route_path(assigns(:medication_route))
  end

  test "should show medication_route" do
    get :show, id: @medication_route
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medication_route
    assert_response :success
  end

  test "should update medication_route" do
    patch :update, id: @medication_route, medication_route: { name: @medication_route.name }
    assert_redirected_to medication_route_path(assigns(:medication_route))
  end

  test "should destroy medication_route" do
    assert_difference('MedicationRoute.count', -1) do
      delete :destroy, id: @medication_route
    end

    assert_redirected_to medication_routes_path
  end
end
