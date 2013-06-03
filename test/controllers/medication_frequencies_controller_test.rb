require 'test_helper'

class MedicationFrequenciesControllerTest < ActionController::TestCase
  setup do
    @medication_frequency = medication_frequencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medication_frequencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medication_frequency" do
    assert_difference('MedicationFrequency.count') do
      post :create, medication_frequency: { name: @medication_frequency.name }
    end

    assert_redirected_to medication_frequency_path(assigns(:medication_frequency))
  end

  test "should show medication_frequency" do
    get :show, id: @medication_frequency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medication_frequency
    assert_response :success
  end

  test "should update medication_frequency" do
    patch :update, id: @medication_frequency, medication_frequency: { name: @medication_frequency.name }
    assert_redirected_to medication_frequency_path(assigns(:medication_frequency))
  end

  test "should destroy medication_frequency" do
    assert_difference('MedicationFrequency.count', -1) do
      delete :destroy, id: @medication_frequency
    end

    assert_redirected_to medication_frequencies_path
  end
end
