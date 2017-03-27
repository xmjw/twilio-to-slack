# Twilio to Slack Bridge

2FA can be a real pain when a distributed team needs to share a device (it happens).

This simple app can be run on services such as Heroku, and can be configured to receive Twilio's SMS webhook and post the text into Slack using another webhook. Webhook. In effect, one Twilio number can receive all the 2FA requests and then share that to your whole team.

# Configuration

Two environment variables are required:

- `SLACK_ENDPOINT` The URL of the Slack webhook.
- `TWILIO_AUTH_TOKEN` Your Twilio account key, so we can validate the incoming request (you should always do this!)
- `SLACK_EMOJI` The emoji to display in slack.
