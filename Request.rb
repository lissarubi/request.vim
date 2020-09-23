require 'httparty'

file = File.open(ARGV[0])
data = JSON.parse(file.read)

type = data['type']
url = data['url']
headers = data['headers']
body = data['body']

if type == 'get'
  response = HTTParty.get(url)
end

if type == 'post'
  if headers.class == NilClass
    response = HTTParty.post(url, body: body.to_hash)

  elsif body.class == NilClass
    response = HTTParty.post(url, headers: headers.to_hash)

  else
    response = HTTParty.post(url, body: body.to_hash, headers: headers.to_hash)
  end
end

puts "Body: #{response.body}\nCode: #{response.code}"
