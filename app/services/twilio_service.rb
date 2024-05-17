class TwilioService
    def initialize
      @client = Twilio::REST::Client.new((''), (''))
    end
  
    def send_sms(to)
      @client.calls.create(
        from: '',
        to: to,
        url: 'http://demo.twilio.com/docs/voice.xml'
      )
    end
end