json.extract! user, :id, :role, :name, :address, :city, :state, :age, :gender, :zip, :email, :phone1, :phone2, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
