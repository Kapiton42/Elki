json.array!(@days) do |day|
  json.extract! day, :id, :monday, :tuesday, :wed, :thursday, :friday, :saturday, :sunday, :graphik_id
  json.url day_url(day, format: :json)
end
