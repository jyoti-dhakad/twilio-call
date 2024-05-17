class SmsController < ApplicationController

    skip_before_action:verify_authenticity_token
    def create
        debugger
        to = params[:to]
        # body = params[:body]
        twilio_service = TwilioService.new
        twilio_service.send_sms(to)
        render json: {message:'call sent successfully!'}
    rescue => e
        render json: {error: "Failed to send SMS: #{e.message}"}
    end
end
