json.array!(@panels) do |panel|
  json.extract! panel, :id, :model, :serail, :mac
  json.url panel_url(panel, format: :json)
end
