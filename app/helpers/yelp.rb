require 'yelp'

client = Yelp::Client.new({ consumer_key: consumer_Key,
                            consumer_secret: consumer_Secret,
                            token: token,
                            token_secret: token_Secret,
                          })

 results = client.search("San Francisco", )
results.businesses.each do |business|
  puts business.name
end
p results.businesses.count

