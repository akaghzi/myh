require 'test_helper'

class CurrentMedicationsControllerTest < ActionController::TestCase
  setup do
    @current_medication = current_medications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:current_medications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create current_medication" do
    assert_difference('CurrentMedication.count') do
      post :create, current_medication: { dosage: @current_medication.dosage, frequency: @current_medication.frequency, name: @current_medication.name, patient_id: @current_medication.patient_id }
    end

    assert_redirected_to current_medication_path(assigns(:current_medication))
  end

  test "should show current_medication" do
    get :show, id: @current_medication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @current_medication
    assert_response :success
  end

  test "should update current_medication" do
    patch :update, id: @current_medication, current_medication: { dosage: @current_medication.dosage, frequency: @current_medication.frequency, name: @current_medication.name, patient_id: @current_medication.patient_id }
    assert_redirected_to current_medication_path(assigns(:current_medication))
  end

  test "should destroy current_medication" do
    assert_difference('CurrentMedication.count', -1) do
      delete :destroy, id: @current_medication
    end

    assert_redirected_to current_medications_path
  end
end
