require 'test_helper'

class ContraceptiveHistoriesControllerTest < ActionController::TestCase
  setup do
    @contraceptive_history = contraceptive_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contraceptive_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contraceptive_history" do
    assert_difference('ContraceptiveHistory.count') do
      post :create, contraceptive_history: { birth_control_pill_problems: @contraceptive_history.birth_control_pill_problems, birth_control_pills: @contraceptive_history.birth_control_pills, condom_problems: @contraceptive_history.condom_problems, condoms: @contraceptive_history.condoms, depo_provera_injection: @contraceptive_history.depo_provera_injection, depo_provera_injection_problems: @contraceptive_history.depo_provera_injection_problems, emergency_contraception: @contraceptive_history.emergency_contraception, emergency_contraception_problems: @contraceptive_history.emergency_contraception_problems, iud: @contraceptive_history.iud, iud_problems: @contraceptive_history.iud_problems, norplant_implanon: @contraceptive_history.norplant_implanon, norplat_implanon_problems: @contraceptive_history.norplat_implanon_problems, patch: @contraceptive_history.patch, patch_problems: @contraceptive_history.patch_problems, patient_id: @contraceptive_history.patient_id, vaginal_ring: @contraceptive_history.vaginal_ring, vaginal_ring_problems: @contraceptive_history.vaginal_ring_problems, withdrawal: @contraceptive_history.withdrawal, withdrawal_problems: @contraceptive_history.withdrawal_problems }
    end

    assert_redirected_to contraceptive_history_path(assigns(:contraceptive_history))
  end

  test "should show contraceptive_history" do
    get :show, id: @contraceptive_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contraceptive_history
    assert_response :success
  end

  test "should update contraceptive_history" do
    patch :update, id: @contraceptive_history, contraceptive_history: { birth_control_pill_problems: @contraceptive_history.birth_control_pill_problems, birth_control_pills: @contraceptive_history.birth_control_pills, condom_problems: @contraceptive_history.condom_problems, condoms: @contraceptive_history.condoms, depo_provera_injection: @contraceptive_history.depo_provera_injection, depo_provera_injection_problems: @contraceptive_history.depo_provera_injection_problems, emergency_contraception: @contraceptive_history.emergency_contraception, emergency_contraception_problems: @contraceptive_history.emergency_contraception_problems, iud: @contraceptive_history.iud, iud_problems: @contraceptive_history.iud_problems, norplant_implanon: @contraceptive_history.norplant_implanon, norplat_implanon_problems: @contraceptive_history.norplat_implanon_problems, patch: @contraceptive_history.patch, patch_problems: @contraceptive_history.patch_problems, patient_id: @contraceptive_history.patient_id, vaginal_ring: @contraceptive_history.vaginal_ring, vaginal_ring_problems: @contraceptive_history.vaginal_ring_problems, withdrawal: @contraceptive_history.withdrawal, withdrawal_problems: @contraceptive_history.withdrawal_problems }
    assert_redirected_to contraceptive_history_path(assigns(:contraceptive_history))
  end

  test "should destroy contraceptive_history" do
    assert_difference('ContraceptiveHistory.count', -1) do
      delete :destroy, id: @contraceptive_history
    end

    assert_redirected_to contraceptive_histories_path
  end
end
