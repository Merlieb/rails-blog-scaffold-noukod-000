json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :address, :price, :description, :image_url
  json.url apartment_url(apartment, format: :json)
end
