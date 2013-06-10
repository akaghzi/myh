require 'test_helper'

class ContraceptivesControllerTest < ActionController::TestCase
  setup do
    @contraceptive = contraceptives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contraceptives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contraceptive" do
    assert_difference('Contraceptive.count') do
      post :create, contraceptive: { name: @contraceptive.name }
    end

    assert_redirected_to contraceptive_path(assigns(:contraceptive))
  end

  test "should show contraceptive" do
    get :show, id: @contraceptive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contraceptive
    assert_response :success
  end

  test "should update contraceptive" do
    patch :update, id: @contraceptive, contraceptive: { name: @contraceptive.name }
    assert_redirected_to contraceptive_path(assigns(:contraceptive))
  end

  test "should destroy contraceptive" do
    assert_difference('Contraceptive.count', -1) do
      delete :destroy, id: @contraceptive
    end

    assert_redirected_to contraceptives_path
  end
end
