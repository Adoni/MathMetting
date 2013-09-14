json.array!(@users) do |user|
  json.extract! user, :name, :age, :school, :title, :arrivedate, :arrivetime, :leavedate, :leavetime, :gender
  json.url user_url(user, format: :json)
end
