json.array!(@cars) do |car|
  json.extract! car, :id, :display_name, :year
  json.url car_url(car, format: :json)
end
