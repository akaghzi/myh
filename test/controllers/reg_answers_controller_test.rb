require 'test_helper'

class RegAnswersControllerTest < ActionController::TestCase
  setup do
    @reg_answer = reg_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reg_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reg_answer" do
    assert_difference('RegAnswer.count') do
      post :create, reg_answer: { content: @reg_answer.content, reg_question_id: @reg_answer.reg_question_id }
    end

    assert_redirected_to reg_answer_path(assigns(:reg_answer))
  end

  test "should show reg_answer" do
    get :show, id: @reg_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reg_answer
    assert_response :success
  end

  test "should update reg_answer" do
    patch :update, id: @reg_answer, reg_answer: { content: @reg_answer.content, reg_question_id: @reg_answer.reg_question_id }
    assert_redirected_to reg_answer_path(assigns(:reg_answer))
  end

  test "should destroy reg_answer" do
    assert_difference('RegAnswer.count', -1) do
      delete :destroy, id: @reg_answer
    end

    assert_redirected_to reg_answers_path
  end
end
