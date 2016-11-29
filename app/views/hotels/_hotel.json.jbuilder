json.extract! hotel, :id, :name, :location, :star_rating, :accomodation_type, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)