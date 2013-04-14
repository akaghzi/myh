require 'test_helper'

class RegQuestionsControllerTest < ActionController::TestCase
  setup do
    @reg_question = reg_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reg_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reg_question" do
    assert_difference('RegQuestion.count') do
      post :create, reg_question: { content: @reg_question.content, minimum_age: @reg_question.minimum_age, sex: @reg_question.sex }
    end

    assert_redirected_to reg_question_path(assigns(:reg_question))
  end

  test "should show reg_question" do
    get :show, id: @reg_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reg_question
    assert_response :success
  end

  test "should update reg_question" do
    patch :update, id: @reg_question, reg_question: { content: @reg_question.content, minimum_age: @reg_question.minimum_age, sex: @reg_question.sex }
    assert_redirected_to reg_question_path(assigns(:reg_question))
  end

  test "should destroy reg_question" do
    assert_difference('RegQuestion.count', -1) do
      delete :destroy, id: @reg_question
    end

    assert_redirected_to reg_questions_path
  end
end
