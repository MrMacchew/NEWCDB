json.array!(@projectors) do |projector|
  json.extract! projector, :id, :make, :model, :mac, :serial
  json.url projector_url(projector, format: :json)
end
