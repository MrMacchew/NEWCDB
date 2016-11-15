json.array!(@controllers) do |controller|
  json.extract! controller, :id, :model, :serial, :mac
  json.url controller_url(controller, format: :json)
end
