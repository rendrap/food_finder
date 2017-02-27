require 'json'
# require 'open-uri'
require 'ap'
require 'httpclient'

request = HTTPClient.new
request.set_auth("https://api.github.com/users/rendrap", "rendrap", "c187359115")
json = request.get_content("https://api.github.com/users/rendrap")

users = JSON.parse(json)
ap users
p users

# json = open("https://api.github.com/users/rendrap")
# json = open("--user rendrap:c187359115 https://api.github.com/users/rendrap")
# users = JSON.parse(request)

# puts "#{request}"
# JSON.parse(request).read