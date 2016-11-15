json.array!(@tvs) do |tv|
  json.extract! tv, :id, :make, :model, :serial, :tag, :mac
  json.url tv_url(tv, format: :json)
end
