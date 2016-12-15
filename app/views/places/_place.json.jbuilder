json.extract! place, :id, :title, :address, :latitude, :longitude, :visited_by, :created_at, :updated_at
json.url place_url(place, format: :json)