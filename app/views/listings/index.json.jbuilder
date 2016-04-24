json.array!(@listings) do |listing|
  json.extract! listing, :id, :user_id, :description, :accomodates, :address, :city, :price, :smoking_room, :pet_friendly, :apartment, :house
  json.url listing_url(listing, format: :json)
end
