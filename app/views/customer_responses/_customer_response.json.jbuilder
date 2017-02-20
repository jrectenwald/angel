json.extract! customer_response, :id, :answer_id, :confidence, :user_id, :csr, :query, :created_at, :updated_at
json.url customer_response_url(customer_response, format: :json)