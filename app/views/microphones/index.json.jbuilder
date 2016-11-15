json.array!(@microphones) do |microphone|
  json.extract! microphone, :id, :make, :serial
  json.url microphone_url(microphone, format: :json)
end
