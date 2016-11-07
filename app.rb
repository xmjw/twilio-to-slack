require 'sinatra'
require 'faraday'
require 'twilio-ruby'

# User Twilio Rack Middleware validation to avoid spoof requests
use Rack::TwilioWebhookAuthentication, ENV['TWILIO_AUTH_TOKEN'], /\/messages/

post '/messages' do
  message = params['Body']

  Faraday.post do |req|
    req.url ENV['SLACK_ENDPOINT']
    req.headers['Content-Type'] = 'application/json'
    req.body = { username: "Twilio", icon_emoji: "twilio", text: message}.to_json
  end

  content_type 'text/xml'
  "<Response></Response>"
end

