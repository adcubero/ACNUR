json.array!(@users) do |user|
  json.extract! user, :id, :name, :role_id, :age, :nationality, :address, :address2
  json.url user_url(user, format: :json)
end
