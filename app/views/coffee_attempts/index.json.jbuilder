json.array!(@coffee_attempts) do |coffee_attempt|
  json.extract! coffee_attempt, :name, :description, :picture
  json.url coffee_attempt_url(coffee_attempt, format: :json)
end
