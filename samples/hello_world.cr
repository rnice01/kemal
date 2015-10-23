require "kemal"

# Set root. If not specified the default content_type is 'text'
get "/" do
  "Hello Kemal!"
end

# You can easily access the environment and set content_type like 'application/json'.
# Look how easy to build a JSON serving API.
get "/user.json" do |env|
  env.response.content_type = "application/json"
  {name: "Serdar", age: 27}.to_json
end
