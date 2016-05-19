json.array!(@graphiks) do |graphik|
  json.extract! graphik, :id, :station_begin_id, :station_end_id
  json.url graphik_url(graphik, format: :json)
end
