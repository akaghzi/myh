require 'test_helper'

class LabTestsControllerTest < ActionController::TestCase
  setup do
    @lab_test = lab_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lab_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lab_test" do
    assert_difference('LabTest.count') do
      post :create, lab_test: { full_name: @lab_test.full_name, high_threshold: @lab_test.high_threshold, low_threshold: @lab_test.low_threshold, short_name: @lab_test.short_name, unit_of_measure: @lab_test.unit_of_measure }
    end

    assert_redirected_to lab_test_path(assigns(:lab_test))
  end

  test "should show lab_test" do
    get :show, id: @lab_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lab_test
    assert_response :success
  end

  test "should update lab_test" do
    patch :update, id: @lab_test, lab_test: { full_name: @lab_test.full_name, high_threshold: @lab_test.high_threshold, low_threshold: @lab_test.low_threshold, short_name: @lab_test.short_name, unit_of_measure: @lab_test.unit_of_measure }
    assert_redirected_to lab_test_path(assigns(:lab_test))
  end

  test "should destroy lab_test" do
    assert_difference('LabTest.count', -1) do
      delete :destroy, id: @lab_test
    end

    assert_redirected_to lab_tests_path
  end
end
