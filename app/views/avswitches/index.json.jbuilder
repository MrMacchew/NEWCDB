json.array!(@avswitches) do |avswitch|
  json.extract! avswitch, :id, :model, :mac, :serial
  json.url avswitch_url(avswitch, format: :json)
end
