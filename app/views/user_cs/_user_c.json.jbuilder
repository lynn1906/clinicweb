json.extract! user_c, :id, :username, :password, :role, :email, :contact, :created_at, :updated_at
json.url user_c_url(user_c, format: :json)
