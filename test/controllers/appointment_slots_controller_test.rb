require 'test_helper'

class AppointmentSlotsControllerTest < ActionController::TestCase
  setup do
    @appointment_slot = appointment_slots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appointment_slots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appointment_slot" do
    assert_difference('AppointmentSlot.count') do
      post :create, appointment_slot: { name: @appointment_slot.name }
    end

    assert_redirected_to appointment_slot_path(assigns(:appointment_slot))
  end

  test "should show appointment_slot" do
    get :show, id: @appointment_slot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appointment_slot
    assert_response :success
  end

  test "should update appointment_slot" do
    patch :update, id: @appointment_slot, appointment_slot: { name: @appointment_slot.name }
    assert_redirected_to appointment_slot_path(assigns(:appointment_slot))
  end

  test "should destroy appointment_slot" do
    assert_difference('AppointmentSlot.count', -1) do
      delete :destroy, id: @appointment_slot
    end

    assert_redirected_to appointment_slots_path
  end
end
