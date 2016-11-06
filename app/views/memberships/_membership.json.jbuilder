json.extract! membership, :id, :date_created, :expiry_date, :length, :price_paid, :customer_id, :created_at, :updated_at
json.url membership_url(membership, format: :json)