class TwilioClient
  attr_reader :client

  require 'twilio-ruby'

  def initialize
    account_id = ENV['TWILIO_ACCOUNT_ID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    @client = Twilio::REST::Client.new account_id, auth_token
  end

  def send_sms(user_phone, message)
    client.api.account.messages.create(
      from: '+14454466884',
      to: user_phone,
      body: message
    )
  end
end
