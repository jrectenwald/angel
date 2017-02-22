json.extract! conversation, :id, :answer_1, :answer_2, :answer_3, :created_at, :updated_at
json.url conversation_url(conversation, format: :json)