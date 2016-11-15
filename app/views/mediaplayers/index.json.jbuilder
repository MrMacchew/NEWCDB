json.array!(@mediaplayers) do |mediaplayer|
  json.extract! mediaplayer, :id, :type, :make, :serial
  json.url mediaplayer_url(mediaplayer, format: :json)
end
