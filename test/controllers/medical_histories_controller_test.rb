require 'test_helper'

class MedicalHistoriesControllerTest < ActionController::TestCase
  setup do
    @medical_history = medical_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_history" do
    assert_difference('MedicalHistory.count') do
      post :create, medical_history: { cured_at: @medical_history.cured_at, diagnosed_at: @medical_history.diagnosed_at, disease: @medical_history.disease, patient_id: @medical_history.patient_id, self_or_family: @medical_history.self_or_family }
    end

    assert_redirected_to medical_history_path(assigns(:medical_history))
  end

  test "should show medical_history" do
    get :show, id: @medical_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_history
    assert_response :success
  end

  test "should update medical_history" do
    patch :update, id: @medical_history, medical_history: { cured_at: @medical_history.cured_at, diagnosed_at: @medical_history.diagnosed_at, disease: @medical_history.disease, patient_id: @medical_history.patient_id, self_or_family: @medical_history.self_or_family }
    assert_redirected_to medical_history_path(assigns(:medical_history))
  end

  test "should destroy medical_history" do
    assert_difference('MedicalHistory.count', -1) do
      delete :destroy, id: @medical_history
    end

    assert_redirected_to medical_histories_path
  end
end
