require 'test_helper'

class MedTestTypesControllerTest < ActionController::TestCase
  setup do
    @med_test_type = med_test_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:med_test_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create med_test_type" do
    assert_difference('MedTestType.count') do
      post :create, med_test_type: { essential: @med_test_type.essential, full_name: @med_test_type.full_name, lab_type: @med_test_type.lab_type, maximum_threshold: @med_test_type.maximum_threshold, minimum_threshold: @med_test_type.minimum_threshold, short_name: @med_test_type.short_name, unit_of_measure: @med_test_type.unit_of_measure }
    end

    assert_redirected_to med_test_type_path(assigns(:med_test_type))
  end

  test "should show med_test_type" do
    get :show, id: @med_test_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @med_test_type
    assert_response :success
  end

  test "should update med_test_type" do
    patch :update, id: @med_test_type, med_test_type: { essential: @med_test_type.essential, full_name: @med_test_type.full_name, lab_type: @med_test_type.lab_type, maximum_threshold: @med_test_type.maximum_threshold, minimum_threshold: @med_test_type.minimum_threshold, short_name: @med_test_type.short_name, unit_of_measure: @med_test_type.unit_of_measure }
    assert_redirected_to med_test_type_path(assigns(:med_test_type))
  end

  test "should destroy med_test_type" do
    assert_difference('MedTestType.count', -1) do
      delete :destroy, id: @med_test_type
    end

    assert_redirected_to med_test_types_path
  end
end
