json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :phone, :gender, :password, :email, :username, :user_type_id
  json.url user_url(user, format: :json)
end
