json.array!(@stations) do |station|
  json.extract! station, :id, :name, :tarifZone, :number
  json.url station_url(station, format: :json)
end
