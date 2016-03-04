require 'rubygems'
require 'twilio-ruby'

account_sid = "AC8140f78c3f2b25f4fd871537ebe12476"
auth_token = "ddb0c07aa5471dbfd3e1fe8d55288a86"

@client = Twilio::REST::Client.new(account_sid, auth_token)

print "Ask the Magic 8 Script your question... "

gets.chomp

possible = ["It is certain", "It is decidecly so", "Without a doubt", "Yes, definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy, try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]

@answer = possible.sample

message = @client.account.messages.create(
  :from => "+17809997489",
  :to => "+17809997489",
  :body => @answer
)

puts message.to