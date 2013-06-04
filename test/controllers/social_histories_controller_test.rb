require 'test_helper'

class SocialHistoriesControllerTest < ActionController::TestCase
  setup do
    @social_history = social_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:social_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create social_history" do
    assert_difference('SocialHistory.count') do
      post :create, social_history: { drinking: @social_history.drinking, drinking_quantity: @social_history.drinking_quantity, excercise_per_day: @social_history.excercise_per_day, living_with_family: @social_history.living_with_family, marital_status: @social_history.marital_status, patient: @social_history.patient, pet: @social_history.pet, physical_excercise: @social_history.physical_excercise, profession: @social_history.profession, smoking: @social_history.smoking, smoking_quantity: @social_history.smoking_quantity, substance_abuse: @social_history.substance_abuse, substance_type: @social_history.substance_type }
    end

    assert_redirected_to social_history_path(assigns(:social_history))
  end

  test "should show social_history" do
    get :show, id: @social_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @social_history
    assert_response :success
  end

  test "should update social_history" do
    patch :update, id: @social_history, social_history: { drinking: @social_history.drinking, drinking_quantity: @social_history.drinking_quantity, excercise_per_day: @social_history.excercise_per_day, living_with_family: @social_history.living_with_family, marital_status: @social_history.marital_status, patient: @social_history.patient, pet: @social_history.pet, physical_excercise: @social_history.physical_excercise, profession: @social_history.profession, smoking: @social_history.smoking, smoking_quantity: @social_history.smoking_quantity, substance_abuse: @social_history.substance_abuse, substance_type: @social_history.substance_type }
    assert_redirected_to social_history_path(assigns(:social_history))
  end

  test "should destroy social_history" do
    assert_difference('SocialHistory.count', -1) do
      delete :destroy, id: @social_history
    end

    assert_redirected_to social_histories_path
  end
end
