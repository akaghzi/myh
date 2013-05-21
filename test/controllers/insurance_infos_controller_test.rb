require 'test_helper'

class InsuranceInfosControllerTest < ActionController::TestCase
  setup do
    @insurance_info = insurance_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insurance_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insurance_info" do
    assert_difference('InsuranceInfo.count') do
      post :create, insurance_info: { insurance_carrier: @insurance_info.insurance_carrier, insurance_guarantor: @insurance_info.insurance_guarantor, insurance_guarantor_relationship: @insurance_info.insurance_guarantor_relationship, insurance_member_id: @insurance_info.insurance_member_id, patient_id: @insurance_info.patient_id }
    end

    assert_redirected_to insurance_info_path(assigns(:insurance_info))
  end

  test "should show insurance_info" do
    get :show, id: @insurance_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insurance_info
    assert_response :success
  end

  test "should update insurance_info" do
    patch :update, id: @insurance_info, insurance_info: { insurance_carrier: @insurance_info.insurance_carrier, insurance_guarantor: @insurance_info.insurance_guarantor, insurance_guarantor_relationship: @insurance_info.insurance_guarantor_relationship, insurance_member_id: @insurance_info.insurance_member_id, patient_id: @insurance_info.patient_id }
    assert_redirected_to insurance_info_path(assigns(:insurance_info))
  end

  test "should destroy insurance_info" do
    assert_difference('InsuranceInfo.count', -1) do
      delete :destroy, id: @insurance_info
    end

    assert_redirected_to insurance_infos_path
  end
end
