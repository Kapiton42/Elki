json.array!(@stations) do |station|
  json.extract! station, :id, :name, :tarif_zone, :number
  json.url station_url(station, format: :json)
end
