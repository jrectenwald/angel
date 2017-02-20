require 'test_helper'

class CustomerResponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_response = customer_responses(:one)
  end

  test "should get index" do
    get customer_responses_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_response_url
    assert_response :success
  end

  test "should create customer_response" do
    assert_difference('CustomerResponse.count') do
      post customer_responses_url, params: { customer_response: { answer_id: @customer_response.answer_id, confidence: @customer_response.confidence, csr: @customer_response.csr, query: @customer_response.query, user_id: @customer_response.user_id } }
    end

    assert_redirected_to customer_response_url(CustomerResponse.last)
  end

  test "should show customer_response" do
    get customer_response_url(@customer_response)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_response_url(@customer_response)
    assert_response :success
  end

  test "should update customer_response" do
    patch customer_response_url(@customer_response), params: { customer_response: { answer_id: @customer_response.answer_id, confidence: @customer_response.confidence, csr: @customer_response.csr, query: @customer_response.query, user_id: @customer_response.user_id } }
    assert_redirected_to customer_response_url(@customer_response)
  end

  test "should destroy customer_response" do
    assert_difference('CustomerResponse.count', -1) do
      delete customer_response_url(@customer_response)
    end

    assert_redirected_to customer_responses_url
  end
end
