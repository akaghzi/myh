require 'test_helper'

class ContactInfosControllerTest < ActionController::TestCase
  setup do
    @contact_info = contact_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_info" do
    assert_difference('ContactInfo.count') do
      post :create, contact_info: { address_line1: @contact_info.address_line1, address_line2: @contact_info.address_line2, alternate_phone: @contact_info.alternate_phone, city: @contact_info.city, country: @contact_info.country, email: @contact_info.email, emergency_contact_name: @contact_info.emergency_contact_name, emergency_contact_phone: @contact_info.emergency_contact_phone, emergency_contact_relationship: @contact_info.emergency_contact_relationship, patient_id: @contact_info.patient_id, postal_code: @contact_info.postal_code, province: @contact_info.province }
    end

    assert_redirected_to contact_info_path(assigns(:contact_info))
  end

  test "should show contact_info" do
    get :show, id: @contact_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_info
    assert_response :success
  end

  test "should update contact_info" do
    patch :update, id: @contact_info, contact_info: { address_line1: @contact_info.address_line1, address_line2: @contact_info.address_line2, alternate_phone: @contact_info.alternate_phone, city: @contact_info.city, country: @contact_info.country, email: @contact_info.email, emergency_contact_name: @contact_info.emergency_contact_name, emergency_contact_phone: @contact_info.emergency_contact_phone, emergency_contact_relationship: @contact_info.emergency_contact_relationship, patient_id: @contact_info.patient_id, postal_code: @contact_info.postal_code, province: @contact_info.province }
    assert_redirected_to contact_info_path(assigns(:contact_info))
  end

  test "should destroy contact_info" do
    assert_difference('ContactInfo.count', -1) do
      delete :destroy, id: @contact_info
    end

    assert_redirected_to contact_infos_path
  end
end
