json.array!(@users) do |user|
  json.extract! user, :id, :name, :fb_link
  json.url user_url(user, format: :json)
end
