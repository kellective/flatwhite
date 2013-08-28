json.array!(@comments) do |comment|
  json.extract! comment, :user_name, :body, :coffee_attempt_id
  json.url comment_url(comment, format: :json)
end
