json.array!(@computers) do |computer|
  json.extract! computer, :id, :name, :wtag, :make, :model, :serial
  json.url computer_url(computer, format: :json)
end
