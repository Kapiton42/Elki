json.array!(@prices) do |price|
  json.extract! price, :id, :zones, :priceOfTicket
  json.url price_url(price, format: :json)
end
