json.array!(@participators) do |participator|
  json.extract! participator, :id, :name, :email
  json.url participator_url(participator, format: :json)
end
