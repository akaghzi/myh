require 'test_helper'

class GynecologyHistoriesControllerTest < ActionController::TestCase
  setup do
    @gynecology_history = gynecology_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gynecology_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gynecology_history" do
    assert_difference('GynecologyHistory.count') do
      post :create, gynecology_history: { followup: @gynecology_history.followup, patient_id: @gynecology_history.patient_id, problem_date: @gynecology_history.problem_date, problem_type: @gynecology_history.problem_type }
    end

    assert_redirected_to gynecology_history_path(assigns(:gynecology_history))
  end

  test "should show gynecology_history" do
    get :show, id: @gynecology_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gynecology_history
    assert_response :success
  end

  test "should update gynecology_history" do
    patch :update, id: @gynecology_history, gynecology_history: { followup: @gynecology_history.followup, patient_id: @gynecology_history.patient_id, problem_date: @gynecology_history.problem_date, problem_type: @gynecology_history.problem_type }
    assert_redirected_to gynecology_history_path(assigns(:gynecology_history))
  end

  test "should destroy gynecology_history" do
    assert_difference('GynecologyHistory.count', -1) do
      delete :destroy, id: @gynecology_history
    end

    assert_redirected_to gynecology_histories_path
  end
end
