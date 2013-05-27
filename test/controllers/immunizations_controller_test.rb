require 'test_helper'

class ImmunizationsControllerTest < ActionController::TestCase
  setup do
    @immunization = immunizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:immunizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create immunization" do
    assert_difference('Immunization.count') do
      post :create, immunization: { hepatitis_a: @immunization.hepatitis_a, hepatitis_a_year: @immunization.hepatitis_a_year, hepatitis_b: @immunization.hepatitis_b, hepatitis_b_year: @immunization.hepatitis_b_year, hpv: @immunization.hpv, hpv_year: @immunization.hpv_year, influenza: @immunization.influenza, influenza_year: @immunization.influenza_year, meningitis: @immunization.meningitis, meningitis_year: @immunization.meningitis_year, mmr: @immunization.mmr, mmr_year: @immunization.mmr_year, patient_id: @immunization.patient_id, pertussis: @immunization.pertussis, pertussis_year: @immunization.pertussis_year, pheumonia: @immunization.pheumonia, pneumonia_year: @immunization.pneumonia_year, polio: @immunization.polio, polio_year: @immunization.polio_year, smallpox: @immunization.smallpox, smallpox_year: @immunization.smallpox_year, tetanus: @immunization.tetanus, tetanus_year: @immunization.tetanus_year, tuberclossis: @immunization.tuberclossis, tuberclossis_year: @immunization.tuberclossis_year, varicella: @immunization.varicella, varicella_year: @immunization.varicella_year, zostavax: @immunization.zostavax, zotavax_year: @immunization.zotavax_year }
    end

    assert_redirected_to immunization_path(assigns(:immunization))
  end

  test "should show immunization" do
    get :show, id: @immunization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @immunization
    assert_response :success
  end

  test "should update immunization" do
    patch :update, id: @immunization, immunization: { hepatitis_a: @immunization.hepatitis_a, hepatitis_a_year: @immunization.hepatitis_a_year, hepatitis_b: @immunization.hepatitis_b, hepatitis_b_year: @immunization.hepatitis_b_year, hpv: @immunization.hpv, hpv_year: @immunization.hpv_year, influenza: @immunization.influenza, influenza_year: @immunization.influenza_year, meningitis: @immunization.meningitis, meningitis_year: @immunization.meningitis_year, mmr: @immunization.mmr, mmr_year: @immunization.mmr_year, patient_id: @immunization.patient_id, pertussis: @immunization.pertussis, pertussis_year: @immunization.pertussis_year, pheumonia: @immunization.pheumonia, pneumonia_year: @immunization.pneumonia_year, polio: @immunization.polio, polio_year: @immunization.polio_year, smallpox: @immunization.smallpox, smallpox_year: @immunization.smallpox_year, tetanus: @immunization.tetanus, tetanus_year: @immunization.tetanus_year, tuberclossis: @immunization.tuberclossis, tuberclossis_year: @immunization.tuberclossis_year, varicella: @immunization.varicella, varicella_year: @immunization.varicella_year, zostavax: @immunization.zostavax, zotavax_year: @immunization.zotavax_year }
    assert_redirected_to immunization_path(assigns(:immunization))
  end

  test "should destroy immunization" do
    assert_difference('Immunization.count', -1) do
      delete :destroy, id: @immunization
    end

    assert_redirected_to immunizations_path
  end
end
