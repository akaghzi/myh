require 'test_helper'

class MedTestsControllerTest < ActionController::TestCase
  setup do
    @med_test = med_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:med_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create med_test" do
    assert_difference('MedTest.count') do
      post :create, med_test: { mearsurement_note: @med_test.mearsurement_note, measurement: @med_test.measurement, med_test_type_id: @med_test.med_test_type_id, ordered_at: @med_test.ordered_at, patient_id: @med_test.patient_id, reviewed_at: @med_test.reviewed_at, visit_id: @med_test.visit_id }
    end

    assert_redirected_to med_test_path(assigns(:med_test))
  end

  test "should show med_test" do
    get :show, id: @med_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @med_test
    assert_response :success
  end

  test "should update med_test" do
    patch :update, id: @med_test, med_test: { mearsurement_note: @med_test.mearsurement_note, measurement: @med_test.measurement, med_test_type_id: @med_test.med_test_type_id, ordered_at: @med_test.ordered_at, patient_id: @med_test.patient_id, reviewed_at: @med_test.reviewed_at, visit_id: @med_test.visit_id }
    assert_redirected_to med_test_path(assigns(:med_test))
  end

  test "should destroy med_test" do
    assert_difference('MedTest.count', -1) do
      delete :destroy, id: @med_test
    end

    assert_redirected_to med_tests_path
  end
end
