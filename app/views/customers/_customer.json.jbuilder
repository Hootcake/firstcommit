json.extract! customer, :id, :name, :surname, :address, :date_of_birth, :phone, :emergency_number, :username, :password, :created_at, :updated_at
json.url customer_url(customer, format: :json)