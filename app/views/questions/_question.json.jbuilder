json.extract! question, :id, :query, :company_id, :confidence, :conversation_id, :created_at, :updated_at
json.url question_url(question, format: :json)