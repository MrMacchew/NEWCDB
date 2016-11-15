json.array!(@micreceivers) do |micreceiver|
  json.extract! micreceiver, :id, :receiver
  json.url micreceiver_url(micreceiver, format: :json)
end
