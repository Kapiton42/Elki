json.array!(@do_not_stops) do |do_not_stop|
  json.extract! do_not_stop, :id, :station_id, :graphik_id
  json.url do_not_stop_url(do_not_stop, format: :json)
end
