require 'test_helper'

class PregnancyHistoriesControllerTest < ActionController::TestCase
  setup do
    @pregnancy_history = pregnancy_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pregnancy_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pregnancy_history" do
    assert_difference('PregnancyHistory.count') do
      post :create, pregnancy_history: { elective_abortions: @pregnancy_history.elective_abortions, full_term_births: @pregnancy_history.full_term_births, living_children: @pregnancy_history.living_children, patient_id: @pregnancy_history.patient_id, preterm_births: @pregnancy_history.preterm_births, spont_miscarriages: @pregnancy_history.spont_miscarriages }
    end

    assert_redirected_to pregnancy_history_path(assigns(:pregnancy_history))
  end

  test "should show pregnancy_history" do
    get :show, id: @pregnancy_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pregnancy_history
    assert_response :success
  end

  test "should update pregnancy_history" do
    patch :update, id: @pregnancy_history, pregnancy_history: { elective_abortions: @pregnancy_history.elective_abortions, full_term_births: @pregnancy_history.full_term_births, living_children: @pregnancy_history.living_children, patient_id: @pregnancy_history.patient_id, preterm_births: @pregnancy_history.preterm_births, spont_miscarriages: @pregnancy_history.spont_miscarriages }
    assert_redirected_to pregnancy_history_path(assigns(:pregnancy_history))
  end

  test "should destroy pregnancy_history" do
    assert_difference('PregnancyHistory.count', -1) do
      delete :destroy, id: @pregnancy_history
    end

    assert_redirected_to pregnancy_histories_path
  end
end
