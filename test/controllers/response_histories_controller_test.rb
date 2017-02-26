require 'test_helper'

class ResponseHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @response_history = response_histories(:one)
  end

  test "should get index" do
    get response_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_response_history_url
    assert_response :success
  end

  test "should create response_history" do
    assert_difference('ResponseHistory.count') do
      post response_histories_url, params: { response_history: { question_id: @response_history.question_id, user_id: @response_history.user_id } }
    end

    assert_redirected_to response_history_url(ResponseHistory.last)
  end

  test "should show response_history" do
    get response_history_url(@response_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_response_history_url(@response_history)
    assert_response :success
  end

  test "should update response_history" do
    patch response_history_url(@response_history), params: { response_history: { question_id: @response_history.question_id, user_id: @response_history.user_id } }
    assert_redirected_to response_history_url(@response_history)
  end

  test "should destroy response_history" do
    assert_difference('ResponseHistory.count', -1) do
      delete response_history_url(@response_history)
    end

    assert_redirected_to response_histories_url
  end
end
