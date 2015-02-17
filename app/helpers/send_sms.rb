
@client = Twilio::REST::Client.new account_sid, auth_token

message = @client.account.messages.create(:body => "im over here but im listening to something",
    :to => "+18054058039",     # Replace with your phone number
    :from => "+18057197710")   # Replace with your Twilio number
puts message.sid
