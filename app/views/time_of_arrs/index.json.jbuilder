json.array!(@time_of_arrs) do |time_of_arr|
  json.extract! time_of_arr, :id, :timeOfArrival, :station_id, :graphik_id
  json.url time_of_arr_url(time_of_arr, format: :json)
end
