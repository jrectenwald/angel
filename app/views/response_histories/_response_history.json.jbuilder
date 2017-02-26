json.extract! response_history, :id, :user_id, :question_id, :created_at, :updated_at
json.url response_history_url(response_history, format: :json)
