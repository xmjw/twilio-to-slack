# Twilio -> Slack Bridge

2FA can be a real pain, especially when you want to do single-device-redirection for overriding testing data in development or staging.

This simple app can be run on services such as Heroku, and can be configured to receive Twilio's SMS webhook and post the text into Slack using another webhook. Webhook.

# Configuration

Two environment variables are required:

- `SLACK_ENDPOINT` The URL of the Slack webhook.
- `TWILIO_AUTH_TOKEN` Your Twilio account key, so we can validate the incoming request (you should always do this!)

