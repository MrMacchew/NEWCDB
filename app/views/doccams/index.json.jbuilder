json.array!(@doccams) do |doccam|
  json.extract! doccam, :id, :make, :model, :serial, :wtag
  json.url doccam_url(doccam, format: :json)
end
