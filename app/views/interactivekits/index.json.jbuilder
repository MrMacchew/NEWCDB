json.array!(@interactivekits) do |interactivekit|
  json.extract! interactivekit, :id, :serial
  json.url interactivekit_url(interactivekit, format: :json)
end
