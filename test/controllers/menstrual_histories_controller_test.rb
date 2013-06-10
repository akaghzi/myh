require 'test_helper'

class MenstrualHistoriesControllerTest < ActionController::TestCase
  setup do
    @menstrual_history = menstrual_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menstrual_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menstrual_history" do
    assert_difference('MenstrualHistory.count') do
      post :create, menstrual_history: { normal_first_day_of_last_period: @menstrual_history.normal_first_day_of_last_period, onset_age: @menstrual_history.onset_age, past_problems_with_period: @menstrual_history.past_problems_with_period, patient_id: @menstrual_history.patient_id, period_interval: @menstrual_history.period_interval, problems_with_period: @menstrual_history.problems_with_period }
    end

    assert_redirected_to menstrual_history_path(assigns(:menstrual_history))
  end

  test "should show menstrual_history" do
    get :show, id: @menstrual_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menstrual_history
    assert_response :success
  end

  test "should update menstrual_history" do
    patch :update, id: @menstrual_history, menstrual_history: { normal_first_day_of_last_period: @menstrual_history.normal_first_day_of_last_period, onset_age: @menstrual_history.onset_age, past_problems_with_period: @menstrual_history.past_problems_with_period, patient_id: @menstrual_history.patient_id, period_interval: @menstrual_history.period_interval, problems_with_period: @menstrual_history.problems_with_period }
    assert_redirected_to menstrual_history_path(assigns(:menstrual_history))
  end

  test "should destroy menstrual_history" do
    assert_difference('MenstrualHistory.count', -1) do
      delete :destroy, id: @menstrual_history
    end

    assert_redirected_to menstrual_histories_path
  end
end
