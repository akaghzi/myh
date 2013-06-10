require 'test_helper'

class GynecologyProblemsControllerTest < ActionController::TestCase
  setup do
    @gynecology_problem = gynecology_problems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gynecology_problems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gynecology_problem" do
    assert_difference('GynecologyProblem.count') do
      post :create, gynecology_problem: { name: @gynecology_problem.name }
    end

    assert_redirected_to gynecology_problem_path(assigns(:gynecology_problem))
  end

  test "should show gynecology_problem" do
    get :show, id: @gynecology_problem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gynecology_problem
    assert_response :success
  end

  test "should update gynecology_problem" do
    patch :update, id: @gynecology_problem, gynecology_problem: { name: @gynecology_problem.name }
    assert_redirected_to gynecology_problem_path(assigns(:gynecology_problem))
  end

  test "should destroy gynecology_problem" do
    assert_difference('GynecologyProblem.count', -1) do
      delete :destroy, id: @gynecology_problem
    end

    assert_redirected_to gynecology_problems_path
  end
end
